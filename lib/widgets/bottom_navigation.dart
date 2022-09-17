import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:vodafone/pages/bundles_page.dart';
import 'package:vodafone/pages/cash_page.dart';
import 'package:vodafone/pages/support_page.dart';
import 'package:vodafone/widgets/bottom_sheet.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);
  void decideAction(int index, BuildContext context) {
    if (index == 0) {
      bottomSheet(context);
    } else if (index == 1) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const CashPage(),
        ),
      );
    } else if (index == 2) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const BundlesPage(),
        ),
      );
    } else if (index == 3) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SupportPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
        icon: Icon(FeatherIcons.home),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(FeatherIcons.home),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(FeatherIcons.home),
        label: "Home",
      )
    ]);
  }
}
