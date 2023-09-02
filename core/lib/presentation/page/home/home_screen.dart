import 'package:core/style/colors.dart';
import 'package:core/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: auth.currentUser?.photoURL != null
                      ? ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      auth.currentUser!.photoURL.toString(),
                      fit: BoxFit.cover,
                      width: 48,
                      height: 48,
                    ),
                  )
                      : const Icon(Icons.person)),
              const SizedBox(
                height: 48,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                              text: 'Hello, ',
                              style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: kDavysGrey)),
                          TextSpan(
                              text: auth.currentUser?.displayName ??
                                  auth.currentUser!.email!,
                              style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kDavysGrey))
                        ])),
              ),
              const SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome Back!',
                  style: GoogleFonts.asap(fontSize: 16, color: kDavysGrey),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.8,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      // Atur besar radius di sini
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, REASON_PAGE);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [colorPrimary, colorSecondary],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // You can pass the animation-related state as a parameter here
                              const Icon(
                                Icons.question_mark_rounded,
                                color: kDavysGrey,
                                size: 36,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Penyebab',
                                style: GoogleFonts.adventPro(
                                    fontSize: 20,
                                    color: kDavysGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, IMPACT_PAGE);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [colorPrimary, colorSecondary],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.bubble_chart_rounded,
                                color: kDavysGrey,
                                size: 36,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Dampak',
                                style: GoogleFonts.adventPro(
                                    fontSize: 20,
                                    color: kDavysGrey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, PREVENTION_PAGE);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [colorPrimary, colorSecondary],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.shield_moon_rounded,
                                color: kDavysGrey,
                                size: 36,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Pencegahan',
                                style: GoogleFonts.adventPro(
                                    fontSize: 20,
                                    color: kDavysGrey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, MARK_PAGE);
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [colorPrimary, colorSecondary],
                                  begin: Alignment.bottomRight,
                                  end: Alignment.topLeft)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.family_restroom_rounded,
                                color: kDavysGrey,
                                size: 36,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Ciri-ciri',
                                style: GoogleFonts.adventPro(
                                    fontSize: 20,
                                    color: kDavysGrey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // The rest of the grid items...
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
