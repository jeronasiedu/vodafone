import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vodafone/data/nav_items.dart';
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
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 8),
            blurRadius: 12,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          navigationItems.length,
          ((index) {
            return InkWell(
              onTap: () {
                decideAction(index, context);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    navigationItems[index]['icon'],
                    width: 24,
                    color: Colors.grey.shade700,
                  ),
                  Text(navigationItems[index]['title'])
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
