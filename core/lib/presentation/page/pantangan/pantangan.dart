import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PantanganPage extends StatelessWidget {
  const PantanganPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          body: SingleChildScrollView(child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  "Minuman yang perlu dikurangi antara lain seperti kopi, teh, dan soft drink, Zat kafein di dalamnya dapat mempengaruhi pertumbuhan janin, sehingga tidak berlangsung secara normal. Selain itu, kafein juga merupakan perangsang yang berpengaruh dan bisa meningkatkan produksi hormon stres. Sedangkan minum teh disarankan tak berbarengan dengan vitamin/ makanan yang mengandung zat besi. Teh akan menghambat penyerapan zat besi. Sementara soft drink, tak dianjurkan karena kandungan kalorinya yang tinggi, tetapi kosong kandungan zat gizinya. Bahkan, beberapa soft drink juga mengandung zat kafein seperti yang terdapat dalam kopi.\n\nMakanan Mentah atau setengah matang, Sebaiknya dihindari, mengingat risiko penyakit yang cukup besar. Karena bahan makanan berasal dari hewan bia mengandung bakteri, parasit, protozoa dan bahkan berbagai jenis cacing. Pada telur setengah matang pun bisa ditemukan salmonela yang dapat mengakibatkan penyakit tifus. \n\nBeberapa penyakit yang dapat menular dari makanan yang tidak matang ini, misalnya diare, demam tifoid, infeksi toksoplasma, dan beberapa infeksi bakteri lainnya. Penyakit- penyakit ini dapat membuat gangguan pada sang ibu, keguguran, dan kadangkala juga kecacatan pada janin. Oleh karenanya, selalulah makan makanan yang telah dimasak sampai benar-benar matang.\n\nMakanan berpengawet dan memakai pewarna, Makanan yang mengandung zat pengawet dan pewarna sebaiknya dihindari karena bisa menyebabkan kecacatan. Hanya saja apa bentuk kecacatannya susah diprediksi karena tak ada uji coba pada manusia.",
                  style: GoogleFonts.asap(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),),
        ));
  }
}
