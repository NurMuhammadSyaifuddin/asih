import 'package:core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../notifier/page_model.dart';



Widget page0(BuildContext context, PageController pageController) {

  const int _currentPage = 0;

  return Consumer<PageModel>(
      builder: (context, model, _) =>
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Image.asset(
                  "assets/logo_asih.png",
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 16,),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'ASIH',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 36),
                  ),),
                const SizedBox(
                  height: 12,
                ),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'Aplikasi Anti Stunting Untuk Ibu Hamil',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 18),
                ),),
                const SizedBox(
                  height: 48,
                ),
                ElevatedButton(
                  onPressed: () {
                    model.setCurrentPage(_currentPage + 1);
                    pageController.animateToPage(model.currentPage,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.ease);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.green)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Next",
                        style: GoogleFonts.poppins(
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