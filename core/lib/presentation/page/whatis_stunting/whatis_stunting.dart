import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatIsStutingPage extends StatelessWidget {
  const WhatIsStutingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              'Apa Itu Stunting',
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  "Stunting adalah kondisi gagal tumbuh pada anak yang disebabkan oleh kekurangan gizi kronis, terutama pada periode 1.000 hari pertama kehidupan sejak konsepsi hingga usia dua tahun. Kondisi ini ditandai dengan pertumbuhan tubuh yang terhambat, yaitu tinggi badan anak yang lebih pendek dari tinggi badan normal yang seharusnya sebanding dengan usianya.",
                  style: GoogleFonts.asap(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),),
        ));
  }
}
