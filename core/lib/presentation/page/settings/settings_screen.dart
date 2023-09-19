import 'package:core/style/colors.dart';
import 'package:core/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    return Scaffold(
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  auth.currentUser?.photoURL != null
                      ? ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      auth.currentUser!.photoURL.toString(),
                      fit: BoxFit.cover,
                      width: 48,
                      height: 48,
                    ),
                  )
                      : const Icon(Icons.person),
                  const SizedBox(width: 12,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                            text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: [
                                  TextSpan(
                                      text: 'Hello, ',
                                      style: GoogleFonts.quicksand(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: kDavysGrey)),
                                  TextSpan(
                                      text: auth.currentUser?.displayName ??
                                          auth.currentUser!.email!,
                                      style: GoogleFonts.quicksand(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: kDavysGrey))
                                ])),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 24,),
              const Divider(color: kDavysGrey,),
              const SizedBox(height: 4,),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: (){
                    FirebaseAuth.instance.signOut();
                    Navigator.pushReplacementNamed(context, SLIDER);
                  },
                  child: Text('Keluar', style: GoogleFonts.asap(fontSize: 18,
                      color: kRichBlack),),
                ),
              ),
              const SizedBox(height: 4,),
              const Divider(color: kDavysGrey,)
            ],
          ),),
      ),
    );
  }
}
