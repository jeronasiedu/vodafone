import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/chip.svg',
            width: 24,
            color: Colors.grey[600],
          ),
          label: "Services",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/cash2.svg',
            width: 24,
            color: Colors.grey[600],
          ),
          label: "Cash",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/package.svg',
            width: 24,
            color: Colors.grey[600],
          ),
          label: "Bundle",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/support.svg',
            width: 24,
            color: Colors.grey[600],
          ),
          label: "Support",
        ),
      ],
    );
  }
}
