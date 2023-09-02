import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VitaminAnMineralPage extends StatelessWidget {
  const VitaminAnMineralPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Vitamin & Mineral',
          style: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                "Melansir Buku Solusi Sehat Seputar Kehamilan (2009) oleh dr. Hermawan Wibisono, Sp.OG dan Ayu Bulan Febry Kurnia Dewi, S.KM., pengaturan gizi selama kehamilan mulai dari trimester pertama, trimester kedua, sampai trimester ketiga perlu diperhatikan. Hal itu dikarenakan, status gizi ibu hamil harus normal, sehingga dapat menjalani kehamilan dengan baik dan aman, serta bayi yang dilahirkan sehat secara fisik dan mental. Salah satu kebutuhan gizi yang perlu disesuaikan selama wanita menjalani masa kehamilan, yakni terkait asupan vitamin dan mineral.\n\nKebutuhan vitamin B wanita akan meningkat selama kehamilan. Misalnya saja, kebutuhan Asam folat (vitamin B9). Contoh buah dengan vitamin B seperti alpukat, jeruk, apel, pisang, dll. Seperti vitamin B, vitamin C juga memiliki peranan yang cukup besar selama kehamilan. Seperti membantu tubuh menyerap zat besi sehingga dapat mencegah terjadinya anemia, seperti jeruk, jambu merah, stroberi, dll. Vitamin D bermanfaat untuk mendukung pertumbuhan tulang dan bayi, mengatur jumlah kalsium dan fosfat di dalam tubuh. Dengan banyak mengkonsumsi ikan salmon, ikan sarden, dan tuna kalengan telur. Pada saat kehamian pada trimester pertama menjadi sekitar 280 µg per hari, 660 µg per hari pada trimester kedua, dan 470 µg per hari pada trimester ketiga.\n\nSelama masa kehamilan, ibu hamil akan mengalami perubahan fisiologis untuk mendukung metabolisme tubuh, baik pada ibu hamil maupun janin. Seiring dengan bertambahnya perubahan fisiologis tersebut, ibu hamil pasti membutuhkan micronutrients, salah satunya mineral. Asupan air mineral yang cukup bagi ibu hamil dapat membantu produksi air ketuban.",
                style: GoogleFonts.asap(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
