import 'package:core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PanduanGiziPage extends StatefulWidget {
  const PanduanGiziPage({super.key});

  @override
  State<PanduanGiziPage> createState() => _PanduanGiziPageState();
}

class _PanduanGiziPageState extends State<PanduanGiziPage> {
  @override
  Widget build(BuildContext context) {
    String selectedRadio = '';

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Data Diri',
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: kRichBlack,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                children: [
                  Expanded(
                      child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(12),
                        hintText: 'Usia',
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: 12),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: kRichBlack)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: kRichBlack)),
                        suffixText: 'Tahun',
                        suffixStyle: GoogleFonts.poppins(color: kRichBlack)),
                  )),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(12),
                        hintText: 'Tinggi Badan',
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: 12),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: kRichBlack)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: kRichBlack)),
                        suffixText: 'cm',
                        suffixStyle: GoogleFonts.poppins(color: kRichBlack)),
                  ))
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                      child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(12),
                        hintText: 'Berat Badan',
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: 12),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: kRichBlack)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: kRichBlack)),
                        suffixText: 'kg',
                        suffixStyle: GoogleFonts.poppins(color: kRichBlack)),
                  )),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(12),
                        hintText: 'Usia Kehamilan',
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: 12),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: kRichBlack)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: kRichBlack)),
                        suffixText: 'Minggu',
                        suffixStyle: GoogleFonts.poppins(color: kRichBlack)),
                  ))
                ],
              ),
              const SizedBox(height: 24,),
              Align(alignment: Alignment.topLeft, child: Text('Tingkat Aktivitas: ', style: GoogleFonts.poppins(fontSize: 14, color: kRichBlack, fontWeight: FontWeight.bold),),),
              Row(
                children: [
                  Expanded(child: Column(
                    children: [
                      RadioListTile(
                        title: Text('Rendah (75% waktu untuk duduk atau berdiri)', style: GoogleFonts.poppins(fontSize: 12, color: kRichBlack),),
                        value: 'A',
                        groupValue: 1,
                        onChanged: (value) {
                          setState(() {
                            selectedRadio = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('Sedang (60% waktu untuk duduk, 40% untuk bergerak)', style: GoogleFonts.poppins(fontSize: 12, color: kRichBlack),),
                        value: 'B',
                        groupValue: 1,
                        onChanged: (value) {
                          setState(() {
                            selectedRadio = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('Berat (40% waktu untuk duduk, 60% waktu untuk bergerak)', style: GoogleFonts.poppins(fontSize: 12, color: kRichBlack),),
                        value: 'C',
                        groupValue: 1,
                        onChanged: (value) {
                          setState(() {
                            selectedRadio = value.toString();
                          });
                        },
                      ),
                    ],
                  ))
                ],
              )

              // DropdownButtonFormField<String>(
              //   isExpanded: true,
              //   decoration: InputDecoration(
              //     contentPadding: const EdgeInsets.all(12),
              //     hintText: 'Tingkat aktivitas',
              //     hintStyle:
              //         GoogleFonts.poppins(color: Colors.grey, fontSize: 12),
              //     enabledBorder: const OutlineInputBorder(
              //         borderSide: BorderSide(color: kRichBlack)),
              //     focusedBorder: const OutlineInputBorder(
              //         borderSide: BorderSide(color: kRichBlack)),
              //   ),
              //   items: [
              //     'Rendah (75% waktu untuk duduk/ berdiri)',
              //     'Sedang (60% waktu untuk duduk, 40% waktu untuk bergerak)',
              //     'Berat (40% waktu untuk duduk, 60% waktu untuk bergerak)'
              //   ] // Gantilah ini dengan pilihan Anda
              //       .map((String value) {
              //     return DropdownMenuItem<String>(
              //       value: value,
              //       child:
              //           Text(value, style: GoogleFonts.poppins(fontSize: 12)),
              //     );
              //   }).toList(),
              //   onChanged: (String? newValue) {
              //     // Handle perubahan nilai dropdown di sini
              //     print(newValue);
              //   },
              // ),
            ],
          ),
        ),
      )),
    );
  }
}
