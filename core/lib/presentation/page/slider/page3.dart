import 'package:core/style/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/routes.dart';
import '../../bloc/auth/auth_event.dart';
import '../../bloc/auth/auth_sign_in_bloc.dart';
import '../../bloc/auth/auth_state.dart';
import '../../bloc/auth/auth_with_google_bloc.dart';
import '../../screen/sign_up_popup.dart';

Widget page3(BuildContext context) {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  return MultiBlocListener(listeners: [
    BlocListener<AuthWithGoogleBloc, AuthState>(listener: (context, state) {
      if (state is LoadingAuthState) {
        showDialog(context: context,
            barrierDismissible: false,
            builder: (context) {
              return const Dialog(
                child: Padding(padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 16,),
                      Text('Loading...', style: TextStyle(fontSize: 16,
                          fontFamily: 'Poppins'),)
                    ],
                  ),),
              );
            });
      } else if (state is AuthenticatedState) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(state.message),
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 2),
          ),
        );
        Navigator.pushReplacementNamed(context, HOME_PAGE);
      } else if (state is UnAuthenticatedState) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(state.message),
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }),
    BlocListener<AuthSignInBloc, AuthState>(listener: (context, state) {
      if (state is LoadingAuthState) {
        showDialog(context: context,
            barrierDismissible: false,
            builder: (context) {
              return const Dialog(
                child: Padding(padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 16,),
                      Text('Loading...', style: TextStyle(fontSize: 16,
                          fontFamily: 'Poppins'),)
                    ],
                  ),),
              );
            });
      } else if (state is AuthenticatedState) {
        Navigator.pop(context);
        if (FirebaseAuth.instance.currentUser!.emailVerified){
          Navigator.pushReplacementNamed(context, HOME_PAGE);
        }else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Email is not verified, please check your email", style: TextStyle(
                  fontFamily: 'Poppins'
              ),),
              behavior: SnackBarBehavior.floating,
              duration: Duration(seconds: 2),
            ),
          );
        }

      } else if (state is UnAuthenticatedState) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(state.message),
            behavior: SnackBarBehavior.floating,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    })
  ],
      child: BlocBuilder<AuthWithGoogleBloc, AuthState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context, builder: (context) {
                                  return const SignUpPopUp();
                                });
                              },
                              child: const Text('Sign Up',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Image.asset(
                            'assets/logo_signin.png',
                            width: 200,
                            height: 200,
                          ),
                          const SizedBox(
                            height: 16,
                          ),

                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 28),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextField(
                            controller: emailController,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              filled: false,
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                color: Colors.white70,
                              ),
                              prefixIcon: Icon(
                                Icons.email_rounded,
                                color: Colors.white,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white)),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          TextField(
                            controller: passwordController,
                            style: const TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                color: Colors.white70,
                              ),
                              prefixIcon: Icon(
                                Icons.key_outlined,
                                color: Colors.white,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white)),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 24,),
                          SizedBox(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<AuthSignInBloc>(context)
                                    .add(SignInEvent(emailController.text,
                                    passwordController.text));
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all(Colors.green)),
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16,),
                          const Text('Atau',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12
                            ),),
                          const SizedBox(height: 16,),
                          SizedBox(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<AuthWithGoogleBloc>(context)
                                      .add(SignUpWithGoogleEvent());
                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/logo_google.png', width: 24,
                                      height: 24,),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      "Google",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ],
                                )
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }));
}