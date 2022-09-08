import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ionicons/ionicons.dart';
import 'package:vodafone/widgets/user_activity.dart';

class Activies extends StatefulWidget {
  const Activies({super.key});

  @override
  State<Activies> createState() => _ActiviesState();
}

class _ActiviesState extends State<Activies> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: const [
          UserActivity(
            icon: Ionicons.wallet_outline,
            desc: "Make fixed broadband payments with different providers",
            title: "Pay bills",
            buttonText: "Pay bills",
          ),
          SizedBox(
            width: 10,
          ),
          UserActivity(
            icon: FeatherIcons.barChart2,
            desc: "Top Up for yourself and others, pay with MOMO",
            title: "Top Up",
            buttonText: "Top Up",
          ),
        ],
      ),
    );
  }
}
