import 'package:core/presentation/page/whatis_stunting/whatis_stunting.dart';
import 'package:core/style/colors.dart';
import 'package:core/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 24,),
                Image.asset(
                  "assets/logo_asih.png",
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 16,),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'ASIH',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: kRichBlack,
                        fontSize: 32),
                  ),),
                const SizedBox(
                  height: 4,
                ),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Aplikasi Anti Stunting Untuk Ibu Hamil',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        color: kDavysGrey,
                        fontSize: 14),
                  ),),
                const SizedBox(
                  height: 32,
                ),
                Align(alignment: Alignment.topLeft,
                  child: Text(
                    'Yuk Belajar Tentang Stunting',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.bold,
                        color: kDavysGrey,
                        fontSize: 24),
                  ),),
                const SizedBox(height: 16,),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      // Atur besar radius di sini
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, WHATIS_PAGE);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [colorPrimary, colorSecondary],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // You can pass the animation-related state as a parameter here
                              const Icon(
                                Icons.question_mark_rounded,
                                color: kDavysGrey,
                                size: 36,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Apa itu stunting',
                                style: GoogleFonts.adventPro(
                                    fontSize: 20,
                                    color: kDavysGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, IMPACT_PAGE);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [colorPrimary, colorSecondary],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.bubble_chart_rounded,
                                color: kDavysGrey,
                                size: 36,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Dampak',
                                style: GoogleFonts.adventPro(
                                    fontSize: 20,
                                    color: kDavysGrey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, PREVENTION_PAGE);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [colorPrimary, colorSecondary],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.shield_moon_rounded,
                                color: kDavysGrey,
                                size: 36,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Pencegahan',
                                style: GoogleFonts.adventPro(
                                    fontSize: 20,
                                    color: kDavysGrey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, MARK_PAGE);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [colorPrimary, colorSecondary],
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.family_restroom_rounded,
                                color: kDavysGrey,
                                size: 36,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Ciri-ciri',
                                style: GoogleFonts.adventPro(
                                    fontSize: 20,
                                    color: kDavysGrey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, REASON_PAGE);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [colorPrimary, colorSecondary],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.stop_circle_outlined,
                                color: kDavysGrey,
                                size: 36,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Penyebab',
                                style: GoogleFonts.adventPro(
                                    fontSize: 20,
                                    color: kDavysGrey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, HEALTHY_PAGE);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [colorPrimary, colorSecondary],
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.add_box_outlined,
                                color: kDavysGrey,
                                size: 36,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Sehat Selama Hamil',
                                style: GoogleFonts.adventPro(
                                    fontSize: 20,
                                    color: kDavysGrey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, PANDUAN_GIZI);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [colorPrimary, colorSecondary],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.scale_outlined,
                                color: kDavysGrey,
                                size: 36,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Panduan Gizi Seimbang',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.adventPro(
                                    fontSize: 20,
                                    color: kDavysGrey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, MARK_PAGE);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [colorPrimary, colorSecondary],
                                  begin: Alignment.bottomRight,
                                  end: Alignment.topLeft)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.menu_book_outlined,
                                color: kDavysGrey,
                                size: 36,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Menuku',
                                style: GoogleFonts.adventPro(
                                    fontSize: 20,
                                    color: kDavysGrey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}