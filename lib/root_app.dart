import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:vodafone/pages/bundles_page.dart';
import 'package:vodafone/pages/cash_page.dart';
import 'package:vodafone/pages/home_page.dart';
import 'package:vodafone/pages/support_page.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  List<Widget> _pages = [
    HomePage(),
    CashPage(),
    BundlesPage(),
    SupportPage(),
  ];
  int currentIndex = 0;
  Color? iconColor = Colors.grey[600];
  double iconSize = 24;
  @override
  Widget build(BuildContext context) {
    Color activeColor = Theme.of(context).colorScheme.primary;
    return Scaffold(
      body: IndexedStack(
        children: _pages,
        index: currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        selectedItemColor: activeColor,
        unselectedItemColor: iconColor,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/cash2.svg',
              width: iconSize,
              color: iconColor,
            ),
            activeIcon: SvgPicture.asset(
              'assets/cash2.svg',
              width: iconSize,
              color: activeColor,
            ),
            label: "Cash",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/package.svg',
              width: iconSize,
              color: iconColor,
            ),
            activeIcon: SvgPicture.asset(
              'assets/package.svg',
              width: iconSize,
              color: activeColor,
            ),
            label: "Bundle",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/support.svg',
              width: iconSize,
              color: iconColor,
            ),
            activeIcon: SvgPicture.asset(
              'assets/support.svg',
              width: iconSize,
              color: activeColor,
            ),
            label: "Support",
          ),
        ],
      ),
    );
  }
}
