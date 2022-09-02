import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ionicons/ionicons.dart';
import 'package:vodafone/widgets/bottom_navigation.dart';
import 'package:vodafone/widgets/swiper_cards.dart';
import 'package:vodafone/widgets/user_activity.dart';
import 'package:vodafone/widgets/user_balance.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 40,
              color: Colors.white,
            ),
            const Text(
              "Hi, Jeron Asiedu",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const SwiperCards(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 14),
            child: UserBalance(),
          ),
          Text(
            "What do you want to do?",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Row(
              children: const [
                UserActivity(
                  icon: Ionicons.wallet_outline,
                  desc:
                      "Make fixed broadband payments with different providers",
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
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          'assets/tobi.png',
          width: 40,
        ),
      ),
    );
  }
}
