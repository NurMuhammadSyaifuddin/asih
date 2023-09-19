import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'impact_tile.dart';

class ImpactPage extends StatelessWidget {
  const ImpactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messages1 = [
      "Gagal tumbuh (berat lahir rendah, kecil, pendek, kurus)",
      "Gangguan metabolik pada saat dewasa → risiko penyakit tidak menular (diabetes, obesitas, stroke, penyakit jantung, dan lain sebagainya).",
      "Terhambatnya kemampuan kognitif →  keterbelakangan mental, rendahnya kemampuan belajar, dan risiko serangan penyakit kronis seperti diabetes, hipertensi, hingga obesitas."
    ];
    final messages2 = [
      "Balita/Baduta ( Bayi dibawah usia dua tahun ) yang mengalami stunting akan memiliki tingkat kecerdasan tidak maksimal, menjadikan anak lebih rentan terhadap penyakit dan di masa depan dapat beresiko pada menurunnya tingkat produktivitas. Pada akhirnya secara luas stunting akan dapat menghambat pertumbuhan ekonomi, meningkatkan kemiskinan dan memperlebar ketimpangan sehingga berpotensi menimbulkan kerugian setiap tahunnya : 2-3 % (Gross Domestic Product)."
    ];

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Dampak',
          style: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
                    shrinkWrap: true,
                    itemCount: messages1.length,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      return impactTile(index + 1, messages1[index],
                          messages1.length, 'Kesehatan');
                    }),
            const SizedBox(height: 16,),
            ListView.builder(
                shrinkWrap: true,
                itemCount: messages2.length,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  return impactTile(
                      index + 1, messages2[index], messages2.length, 'Ekonomi');
                })
          ],
        ),
      ),
    ));
  }
}
