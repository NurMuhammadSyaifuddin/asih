import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mark_tile.dart';

class MarkPage extends StatelessWidget {
  const MarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messages = [
      "Pertumbuhan melambat.",
      "Wajah tampak lebih muda dari anak seusianya",
      "Pertumbuhan gigi terlambat",
      "Performa buruk pada kemampuan fokus dan memori belajarnya.",
      "Usia 8 – 10 tahun anak menjadi lebih pendiam, tidak banyak melakukan kontak	mata terhadap orang di sekitarnya",
      "Berat badan balita tidak naik bahkan cenderung menurun.",
      "Perkembangan tubuh anak terhambat, seperti telat menarche (menstruasi pertama anak perempuan).",
      "Anak mudah terserang berbagai penyakit infeksi."
    ];
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Ciri-ciri',
          style: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        ),
      ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const SizedBox(height: 8,),
                Expanded(child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: messages.length,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index){
                      return markTile(index+1, messages[index], messages.length);
                    }))
              ],
            ),
          ),
    ));
  }
}
