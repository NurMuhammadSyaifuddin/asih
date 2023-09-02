import 'package:core/presentation/page/home/home_screen.dart';
import 'package:core/presentation/page/settings/settings_screen.dart';
import 'package:core/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final _pageController = PageController();
  final List<Widget> _pages = [
    const HomeScreen(),
    Container(),
    const SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: _pages,
        onPageChanged: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: SlidingClippedNavBar(barItems: [
        BarItem(title: 'Home', icon: Icons.home_filled),
        BarItem(title: 'History', icon: Icons.list_alt),
        BarItem(title: 'Settings', icon: Icons.settings)
      ], selectedIndex: _currentIndex, onButtonPressed: (index){
        setState(() {
          _currentIndex = index;
          _pageController.jumpToPage(index);
        });
      }, activeColor: colorPrimary),
    );
  }
}
