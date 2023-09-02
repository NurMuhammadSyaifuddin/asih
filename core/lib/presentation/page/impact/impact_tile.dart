import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Widget impactTile(int number, String message, int length, String type) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (number == 1)
         Column(
           children: [
             Text(
               'Dampak $type: ',
               style: GoogleFonts.asap(
                   fontSize: 18,
                   fontWeight: FontWeight.bold
               ),
             ),
             const SizedBox(height: 8,),
           ],
         ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (length != 1)
            Expanded(
              flex: 1,
              child: Text(
                "$number.",
                style: GoogleFonts.asap(height: 1.5),
              ),
            ),
          Expanded(
              flex: 8,
              child: Text(
                textAlign: TextAlign.justify,
                "$message\n",
                style: GoogleFonts.asap(height: 1.3),
              )),
        ],
      ),
    ],
  );
}
