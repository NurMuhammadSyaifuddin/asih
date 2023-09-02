import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Widget reasonTile(int number, String message, int length) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,children: [
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
      ],),

      if (number == length)
        Text('(Aridiyah et al., 2015; Aini et al., 2018)',
          style: GoogleFonts.adventPro(fontWeight: FontWeight.bold),)
    ],
  );
}
