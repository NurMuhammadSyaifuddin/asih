import 'package:core/presentation/page/pantangan/pantangan_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantanganPage extends StatelessWidget {
  const PantanganPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messages1 = [
      "Makanan mentah atau setengah matang: telur mentah, telur setengah matang, ikan mentah, steak setengah matang, sea food yang tinggi mercuri seperti kerang, udang, susu mentah.",
      "Alkohol",
      "Minum kopi berlebihan",
      "Minum obat tanpa resep",
      "Makan makanan cepat saji berlebihan",
      "Makanan berpengawet dan memakai pewarna dengan berlebihan"
    ];

    final message2 = [
      "Kerja berat",
      "Merokok/ terpapar asap rokok",
      "Tidur terlentang lebih dari 10 menit pada masa hamil tua untuk menghindari kekurangan oksigen pada janin",
      "Stress berlebihan"
    ];

    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              'Pantangan',
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
                      return pantanganTile(index + 1, messages1[index],
                          messages1.length, 'Makanan dan Minuman yang Tidak Dianjurkan');
                    }),
                const SizedBox(height: 16,),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: message2.length,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      return pantanganTile(
                          index + 1, message2[index], message2.length, 'Hindari Selama Hamil');
                    })
              ],
            ),
          ),
        ));
  }
}
