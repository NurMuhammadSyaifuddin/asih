import 'dart:io';

import 'package:core/notifier/page_model.dart';
import 'package:core/presentation/bloc/auth/auth_bloc.dart';
import 'package:core/presentation/bloc/auth/auth_sign_in_bloc.dart';
import 'package:core/presentation/bloc/auth/auth_with_google_bloc.dart';
import 'package:core/presentation/page/home_page.dart';
import 'package:core/presentation/page/mark/mark_page.dart';
import 'package:core/presentation/page/impact/impact_page.dart';
import 'package:core/presentation/page/prevention/prevention_page.dart';
import 'package:core/presentation/page/vitamin/vitam_and_mineral.dart';
import 'package:core/presentation/page/pantangan/pantangan_page.dart';
import 'package:core/presentation/page/whatis_stunting/whatis_stunting.dart';
import 'package:core/presentation/page/reason/reason_page.dart';
import 'package:core/presentation/page/healthy/healthy_page.dart';
import 'package:core/presentation/page/slider/slider_page.dart';
import 'package:core/presentation/page/panduan_gizi/panduan_gizi.dart';
import 'package:core/style/colors.dart';
import 'package:core/utils/routes.dart';
import 'package:core/utils/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:asih/injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SecurityContext(withTrustedRoots: false);
  await Firebase.initializeApp();
  di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      BlocProvider(create: (context) => di.locator<AuthBloc>()),
      BlocProvider(create: (context) => di.locator<AuthSignInBloc>()),
      BlocProvider(create: (context) => di.locator<AuthWithGoogleBloc>()),
      ChangeNotifierProvider(create: (context) => PageModel()),
    ],
    child: MaterialApp(
      title: 'Asih',
      debugShowCheckedModeBanner: false,
      navigatorObservers: [routeObserver],
      theme: ThemeData(
        primaryColor: colorPrimary,     // Warna primer
        colorScheme: const ColorScheme.light().copyWith(
          primary: colorPrimary,       // Warna primer
          onPrimary: colorOnPrimary,     // Warna teks pada warna primer
          secondary: colorSecondary,     // Warna sekunder
          onSecondary: colorOnSecondary,   // Warna teks pada warna sekunder
        ),
      ),
      home: const SliderPage(),
      onGenerateRoute: (RouteSettings settings){
        switch(settings.name){
          case SLIDER:
            return MaterialPageRoute(builder: (_) => const SliderPage());
          case HOME_PAGE:
            return MaterialPageRoute(builder: (_) => const AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle(statusBarColor: colorPrimary),child: HomePage(),));
          case REASON_PAGE:
            return MaterialPageRoute(builder: (_) => const AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle(statusBarColor: colorPrimary),child: ReasonPage(),));
          case PREVENTION_PAGE:
            return MaterialPageRoute(builder: (_) => const AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle(statusBarColor: colorPrimary),child: PreventionPage(),));
          case MARK_PAGE:
            return MaterialPageRoute(builder: (_) => const AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle(statusBarColor: colorPrimary),child: MarkPage(),));
          case IMPACT_PAGE:
            return MaterialPageRoute(builder: (_) => const AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle(statusBarColor: colorPrimary),child: ImpactPage(),));
          case VITAMIN_PAGE:
            return MaterialPageRoute(builder: (_) => const AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle(statusBarColor: colorPrimary),child: VitaminAnMineralPage(),));
          case PANTANGAN_PAGE:
            return MaterialPageRoute(builder: (_) => const AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle(statusBarColor: colorPrimary),child: PantanganPage(),));
          case WHATIS_PAGE  :
            return MaterialPageRoute(builder: (_) => const AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle(statusBarColor: colorPrimary),child: WhatIsStutingPage(),));
          case HEALTHY_PAGE  :
            return MaterialPageRoute(builder: (_) => const AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle(statusBarColor: colorPrimary),child: HealthyPage(),));
          case PANDUAN_GIZI  :
            return MaterialPageRoute(builder: (_) => const AnnotatedRegion<SystemUiOverlayStyle>(value: SystemUiOverlayStyle(statusBarColor: colorPrimary),child: PanduanGiziPage(),));
        }
        return MaterialPageRoute(builder: (_) => const  SliderPage());
      },
    ),);
  }
}