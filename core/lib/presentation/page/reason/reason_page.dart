import 'package:core/presentation/page/reason/reason_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReasonPage extends StatelessWidget {
  const ReasonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messages = [
      "Gizi buruk saat hamil. Agar proses tumbuh kembang anak bisa berjalan dengan optimal, ia perlu mendapatkan asupan nutrisi yang cukup di 1000 hari pertama kehidupannya, yakni sejak masih menjadi janin hingga usia sekitar 2 tahun.",
      "Anemia pada masa kehamilan. Anemia defisiensi besi adalah kondisi yang serius yang disebabkan bumil kekurangan zat besi. Ibu hamil dengan anemia berisiko 3,2 kali lebih besar untuk memiliki anak stunting.",
      "Tidak mendapat ASI eksklusif. Salah satu penyebab stunting pada anak adalah anak tidak mendapat ASI eksklusif selama 6 bulan. Berdasarkan penelitian, balita yang tidak diberikan ASI eksklusif berpeluang 61 kali lipat mengalami stunting dibandingkan balita yang diberi ASI eksklusif. Kemudian, balita yang tidak diberikan ASI eksklusif memiliki peluang 98% untuk mengalami stunting.",
      "Anak kurang nutrisi saat MPASI. Cara pemberian makanan pendamping ASI (MPASI) yang keliru juga menjadi salah satu penyebab stunting pada anak. Salah satu zat gizi yang biasanya kurang pada MPASI adalah protein hewani, seperti daging merah, daging ayam, ikan dan telur. Kurangnya protein hewani, menurut penelitian, berhubungan dengan masalah gangguan pertumbuhan fisik pada anak balita, termasuk stunting.",
      "Tidak mematuhi jadwal imunisasi. Anak-anak yang tidak mendapat imunisasi akan berisiko terserang penyakit berbahaya dan memiliki sistem kekebalan tubuh yang buruk. Ini yang membuat mereka sering sakit dan pertumbuhannya tidak optimal sehingga terancam stunting. Masalah stunting dapat dicegah melalui imunisasi pada balita. Stunting bukan hanya karena gizi buruk, namun penyakit kronis yang dapat dicegah dengan imunisasi lengkap."
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, title: Text(
          'Penyebab',
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Expanded(child: ListView.builder(clipBehavior: Clip.none,
                shrinkWrap: true, // Add this line to fix the issue
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return reasonTile(index + 1, messages[index], messages.length);
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
