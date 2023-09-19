import 'package:core/presentation/page/healthy/healthy_tile.dart';
import 'package:core/presentation/page/prevention/prevention_tile.dart';
import 'package:core/style/colors.dart';
import 'package:core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pantangan/pantangan_tile.dart';

class HealthyPage extends StatelessWidget {
  const HealthyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messages1 = [
      "Vitamin A dapat diperoleh dari: susu, mentega kuning telur, hati, sayuran hijau, wortel dan buah-buahan",
      "Vitamin D dapat diperoleh dari: Ikan, telur, daging, susu,sereal, pancaran sinar matahari.",
      "Vitamin E dapat doperoleh dari: alpukat, kiwi, papaya,zxsayuran hijau dan  minyak serelia.",
      "Vitamin K dapat diperoleh dari: sayuran berdaun hijau, susu, daging-dagingan.",
      "Vitamin C dapat diperoleh dari: jambu biji, jeruk, kiwi, stroberi, lemon, mangga, papaya, paprika, kembang kol, brokoli, kangkung."
      "Vitamin B1 (thiamin) dapat diperoleh dari: gandum, kacang polong, ikan salmon, sereal.",
      "Vitamin B2 (riboflavin) dapat diperoleh dari: kacang almond, kacang poling, ubil jalar, wortel, gandum, brokoli, bayam, keju, susu, telur, yoghurt.",
      "Vitamin B3 (niacin) dapat diperoleh dari: biji bunga matahari, chia seeds, dada ayam, kacang merah, ikan tuna.",
      "Vitamin B5 (asam pantotenat) dapat diperoleh dari: kuning telur, beras merah, kecang mete, brokoli.",
      "Vitamin B6 (pyridoxine) dapat diperoleh dari: bawang putih, kacang polong, ubi jalar, buncis, alpukat, beras merah, bayam, pisang, papaya.",
      "Vitamin B9 (asam folat) dapat diperoleh dari: bayam, kacang-kacangan, kecambah.",
      "Vitamin B12 (cobalamin) dapat diperoleh dari: salmon, udang, yoghurt, daging sapi, keju dan produk susu."
    ];

    final pantangan1 = [
      "Makanan mentah atau setengah matang: telur mentah, telur setengah matang, ikan mentah, steak setengah matang, sea food yang tinggi mercuri seperti kerang, udang, susu mentah.",
      "Alkohol",
      "Minum kopi berlebihan",
      "Minum obat tanpa resep",
      "Makan makanan cepat saji berlebihan",
      "Makanan berpengawet dan memakai pewarna dengan berlebihan"
    ];

    final pantangan2 = [
      "Kerja berat",
      "Merokok/ terpapar asap rokok",
      "Tidur terlentang lebih dari 10 menit pada masa hamil tua untuk menghindari kekurangan oksigen pada janin",
      "Stress berlebihan"
    ];

    final hidupSehat = [
      "Makan beragam dan proporsional",
      "Menjaga kebersihan diri (cuci tangan, mandi dan gosok gigi, keramas, ganti pakaian dalam, dll)",
      "Istirahat yang cukup",
      "Sering memberikan stimulasi pada janin"
    ];

    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              'Sehat Selama Hamil',
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(12),
            child: AnimationLimiter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: AnimationConfiguration.toStaggeredList(
                      childAnimationBuilder: (widget) => SlideAnimation(
                        horizontalOffset: MediaQuery.of(context).size.width / 2,
                        child: FadeInAnimation(child: widget),
                      ),
                      children: [
                        ExpansionTile(
                          backgroundColor: colorOnSecondary,
                          collapsedBackgroundColor: colorOnSecondary,
                          title: Row(
                            children: [
                              const Icon(Icons.apple_rounded),
                              const SizedBox(width: 16,),
                              Text(
                                'Vitamin & Mineral',
                                style: GoogleFonts.asap(
                                    fontSize: 18.0, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: messages1.length,
                                  clipBehavior: Clip.none,
                                  itemBuilder: (context, index) {
                                    return healthyTile(
                                        index + 1, messages1[index], messages1.length, 'Vitamin');
                                  }),
                            ),
                            Padding(padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      'Mineral',
                                      style: GoogleFonts.asap(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  const SizedBox(height: 12,),
                                  Text(
                                    'Beberapa contoh mineral seperti:',
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.asap(
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  const SizedBox(height: 4,),
                                  Text(
                                    'Kalium, fosfor, magnesium, besi, iodium, seng, selenium, mangan, fluor, kromium, kalium, natrium, klor, dan tembaga.',
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.asap(
                                        height: 1.3
                                    ),
                                  ),
                                  const SizedBox(height: 16,),
                                  Text(
                                    'Mineral ini dapat diperoleh dari:',
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.asap(
                                        fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(height: 4,),
                                  Text(
                                    'Daging merah tanpa lemak, ungags, ikan, sayuran, dan kacang-kacangan, biji-bijian, kerang, ikan sarden, kubis, telur, keju, kentang, labu, oatmeal, bayam, selada, stroberi, pisang, mangga, nanas , jambu.',
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.asap(
                                        height: 1.3
                                    ),
                                  ),
                                ],
                              ),
                            ),)
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ExpansionTile(
                          backgroundColor: colorOnSecondary,
                          collapsedBackgroundColor: colorOnSecondary,
                          title: Row(
                            children: [
                              const Icon(Icons.monitor_heart_outlined),
                              const SizedBox(width: 16,),
                              Text(
                                'Pantangan',
                                style: GoogleFonts.asap(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: pantangan1.length,
                                      clipBehavior: Clip.none,
                                      itemBuilder: (context, index) {
                                        return pantanganTile(index + 1, pantangan1[index],
                                            pantangan1.length, 'Makanan dan Minuman yang Tidak Dianjurkan');
                                      }),
                                  const SizedBox(height: 16,),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: pantangan2.length,
                                      clipBehavior: Clip.none,
                                      itemBuilder: (context, index) {
                                        return pantanganTile(
                                            index + 1, pantangan2[index], pantangan2.length, 'Hindari Selama Hamil');
                                      })
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 16,),
                        ExpansionTile(
                          backgroundColor: colorOnSecondary,
                          collapsedBackgroundColor: colorOnSecondary,
                          title: Row(
                            children: [
                              const Icon(Icons.health_and_safety_outlined),
                              const SizedBox(width: 16,),
                              Expanded(child: Text(
                                'Pola Hidup Sehat dan Bersih',
                                style: GoogleFonts.asap(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ))
                            ],
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: hidupSehat.length,
                                      clipBehavior: Clip.none,
                                      itemBuilder: (context, index) {
                                        return pantanganTile(index + 1, hidupSehat[index],
                                            hidupSehat.length, '');
                                      }),

                                ],
                              ),
                            )
                          ],
                        ),
                      ]),
                )),
          ),
        ));
  }
}
