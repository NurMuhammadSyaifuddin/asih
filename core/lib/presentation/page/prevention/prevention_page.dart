import 'package:core/presentation/page/prevention/prevention_tile.dart';
import 'package:core/style/colors.dart';
import 'package:core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';

class PreventionPage extends StatelessWidget {
  const PreventionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messages = [
      "Memenuhi kebutuhan gizi sejak hamil tindakan yang relatif ampuh dilakukan untuk mencegah stunting pada anak adalah selalu memenuhi gizi sejak masa kehamilan.",
      "Beri ASI Eksklusif sampai bayi berusia 6 bulan Veronika Scherbaum, ahli nutrisi dari Universitas Hohenheim, Jerman, menyatakan ASI ternyata berpotensi mengurangi peluang stunting pada anak berkat kandungan gizi mikro dan makro.",
      "Dampingi ASI Eksklusif dengan MPASI sehat ketika bayi menginjak usia 6 bulan ke atas, maka ibu sudah bisa memberikan makanan pendamping atau MPASI.",
      "Terus memantau tumbuh kembang anak orang tua perlu terus memantau tumbuh kembang anak mereka, terutama dari tinggi dan berat badan anak.",
      "Selalu jaga kebersihan lingkunga seperti yang diketahui, anak-anak sangat rentan akan serangan penyakit, terutama kalau lingkungan sekitar mereka kotor."
    ];

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Pencegahan',
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
                          const Icon(Icons.health_and_safety_outlined),
                          const SizedBox(width: 16,),
                          Text(
                            'Pencegahan',
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
                              itemCount: messages.length,
                              clipBehavior: Clip.none,
                              itemBuilder: (context, index) {
                                return preventionTile(
                                    index + 1, messages[index], messages.length);
                              }),
                        ),
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
                            'Sehat Selama Hamil',
                            style: GoogleFonts.asap(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Column(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Nutrisi',
                                    style: GoogleFonts.quicksand(color: Colors.white, fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(
                                height: 8,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, VITAMIN_PAGE);
                                  },
                                  child: Text(
                                    'Vitamin dan Mineral',
                                    style: GoogleFonts.quicksand(color: Colors.white, fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(
                                height: 8,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, PANTANGAN_PAGE);
                                  },
                                  child: Text(
                                    'Pantangan',
                                    style: GoogleFonts.quicksand(color: Colors.white, fontWeight: FontWeight.bold),
                                  )),
                              const SizedBox(
                                height: 8,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Pola Hidup Bersih dan Sehat',
                                    style: GoogleFonts.quicksand(color: Colors.white, fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        ),

                      ],
                    ),
                    const SizedBox(height: 16,),
                    ExpansionTile(
                      backgroundColor: colorOnSecondary,
                      collapsedBackgroundColor: colorOnSecondary,
                      title: Row(
                        children: [
                          const Icon(Icons.apple_rounded),
                          const SizedBox(width: 16,),
                          Expanded(child: Text(
                            'Panduan Gizi Seimbang Untuk Ibu Hamil',
                            style: GoogleFonts.asap(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ))
                        ],
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Column(
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Kalkulator Gizi',
                                      style: GoogleFonts.quicksand(color: Colors.white, fontWeight: FontWeight.bold),
                                    )),
                                const SizedBox(
                                  height: 8,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Menu Sehat dan Enak',
                                      style: GoogleFonts.quicksand(color: Colors.white, fontWeight: FontWeight.bold),
                                    )),
                              ]),
                        ),

                      ],
                    ),
                  ]),
            )),
      ),
    ));
  }
}
