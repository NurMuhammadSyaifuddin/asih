import 'package:core/style/colors.dart';
import 'package:core/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        const SizedBox(height: 32,),
        const Divider(color: kDavysGrey,),
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
        const Divider(color: kDavysGrey,)
      ],
    ),);
  }
}
