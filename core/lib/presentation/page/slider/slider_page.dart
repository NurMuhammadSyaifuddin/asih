import 'package:core/notifier/page_model.dart';
import 'package:core/presentation/page/slider/page0.dart';
import 'package:core/presentation/page/slider/page1.dart';
import 'package:core/presentation/page/slider/page2.dart';
import 'package:core/presentation/page/slider/page3.dart';
import 'package:core/style/colors.dart';
import 'package:core/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (auth.currentUser != null) {
        Navigator.pushReplacementNamed(context, HOME_PAGE);
      }
    });
  }

  final currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final pageModel = Provider.of<PageModel>(context, listen: false);
    final pageController = PageController(initialPage: pageModel.currentPage);
    return Consumer<PageModel>(
        builder: (context, model, _) => Scaffold(
              resizeToAvoidBottomInset: false,
              body: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [colorPrimary, colorOnPrimary],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                    ),
                    child: SafeArea(
                        child: PageView(
                      controller: pageController,
                      onPageChanged: (int page) {
                        model.setCurrentPage(page);
                      },
                      children: [
                        page0(context, pageController),
                        page1(context, pageController),
                        page2(context, pageController),
                      ],
                    )),
                  ),
                  Positioned(
                      bottom: 32,
                      left: 0,
                      right: 0,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: SmoothPageIndicator(
                          controller: pageController,
                          count: 3,
                          effect: const WormEffect(activeDotColor: colorYellow),
                          onDotClicked: (index) {
                            pageController.animateToPage(index,
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.ease);
                          },
                        ),
                      )),

                ],
              ),
            ));
  }
}
