import 'package:core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../notifier/page_model.dart';



Widget page1(BuildContext context, PageController pageController) {

  return Consumer<PageModel>(
      builder: (context, model, _) =>
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Image.asset(
                  "assets/logo_doctor_wanita.png",
                  width: 200,
                  height: 200,
                ),
                const SizedBox(
                  height: 32,
                ),
                 Text(
                  'Stunting',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 28),
                ),
                const SizedBox(
                  height: 24,
                ),
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Stunting adalah kondisi gagal tumbuh pada anak yang disebabkan oleh kekurangan gizi kronis, terutama pada periode 1.000 hari pertama kehidupan sejak konsepsi hingga usia dua tahun. Kondisi ini ditandai dengan pertumbuhan tubuh yang terhambat, yaitu tinggi badan anak yang lebih pendek dari tinggi badan normal yang seharusnya sebanding dengan usianya.',
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
                ElevatedButton(
                  onPressed: () {
                    pageController.animateToPage(model.currentPage + 1,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.ease);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.green)),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Next",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ));
}