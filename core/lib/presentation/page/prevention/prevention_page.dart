import 'package:core/presentation/page/prevention/prevention_tile.dart';
import 'package:flutter/material.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(16),
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
      ),
    ));
  }
}
