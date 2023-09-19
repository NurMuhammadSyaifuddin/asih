import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

Widget preventionTile(int number, String message, int length) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (number == 1)
        Text(
          'Salah satu cara pencegahan stunting menurut (kemkes, 2019): \n',
          style: GoogleFonts.asap(),
        ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              "\u25CF",
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
      if (number == length)
        Text(
          textAlign: TextAlign.justify,
          'Edukasi mengenai stunting di beberapa kalangan masyarakat Indonesia masih kurang sehingga kami membuat aplikasi ASIH (Aplikasi Anti Stunting untuk Ibu Hamil Berbasis Android) untuk mencegah stunting khususnya pada masa kehamilan dengan memberikan edukasi mengenai stunting, dengan fitur-fitur seperti pola hidup sehat, dan pola makan yang sehat. Disesuaikan dengan kondisi tubuh ibu hamil dari kalkulator gizi.',
          style: GoogleFonts.asap(),
        )
    ],
  );
}
