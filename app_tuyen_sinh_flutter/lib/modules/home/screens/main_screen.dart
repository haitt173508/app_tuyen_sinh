import 'package:app_tuyen_sinh_flutter/modules/home/screens/account_screen.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/screens/contact_screen.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/screens/home_screen.dart';
import 'package:app_tuyen_sinh_flutter/modules/home/widgets/home_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        children: const [
          ContactScreen(),
          HomeScreen(),
          AccountScreen(),
        ],
      ),
      bottomNavigationBar: HomeBottomNavBar(
        onChanged: (value) {
          _pageController.animateToPage(
            value,
            duration: const Duration(milliseconds: 200),
            curve: Curves.linear,
          );
        },
      ),
    );
  }
}
