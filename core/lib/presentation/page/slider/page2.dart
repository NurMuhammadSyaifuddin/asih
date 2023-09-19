import 'package:core/presentation/bloc/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../notifier/page_model.dart';
import '../../../utils/routes.dart';
import '../../bloc/auth/auth_event.dart';
import '../../bloc/auth/auth_with_google_bloc.dart';

Widget page2(BuildContext context, PageController pageController) {
  return BlocListener<AuthWithGoogleBloc, AuthState>(listener: (context, state){
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
  }, child: Consumer<PageModel>(
      builder: (context, model, _) =>
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Image.asset(
                      "assets/logo_doctor_pria.png",
                      width: 200,
                      height: 200,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'Ayo Kenali Kondisimu!',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 28),
                      ),),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'Temukan informasi menarik dan berguna terkait stunting yang dapat membantumu untuk mengenali kondisi dan gejala penyakit tersebut',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
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
                                  "Login with Google",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            )
                        ),
                      ),),
                  ],
                ),
              ],
            ),
          )),);
}