import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Widget markTile(int number, String message, int length) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (number == 1)
        Text(
          'Ciri-ciri lainnya menurut (kemkes, 2022) yaitu: \n',
          style: GoogleFonts.asap(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              "\u25CF",
              style: GoogleFonts.asap(height: 1),
            ),
          ),
          Expanded(
              flex: 8,
              child: Text(
                textAlign: TextAlign.justify,
                "$message\n",
                style: GoogleFonts.asap(height: 1),
              )),
        ],
      ),
    ],
  );
}
