import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../notifier/page_model.dart';

Widget page2(BuildContext context, PageController pageController) {
  return Consumer<PageModel>(
      builder: (context, model, _) =>
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Image.asset(
                      "assets/logo_doctor_pria.png",
                      width: 200,
                      height: 200,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    const Text(
                      'Ayo Kenali Kondisimu!',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 28),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'Temukan informasi menarik dan berguna terkait stunting yang dapat membantumu untuk mengenali kondisi dan gejala penyakit tersebut',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white70,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      ),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        pageController.animateToPage(model.currentPage + 1,
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.ease);
                      },
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.green)),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Log In",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ));
}