import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ionicons/ionicons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vodafone/data/card_info.dart';
import 'package:vodafone/widgets/bottom_navigation.dart';
import 'package:vodafone/widgets/my_card.dart';
import 'package:vodafone/widgets/user_activity.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  final _controller = PageController();
  int currentIndex = 0;
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
          SizedBox(
            height: 165,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: cardInfo.length,
              itemBuilder: (context, index) {
                return MyCard(
                  amountLeft: cardInfo[index]['amountLeft'],
                  icon: cardInfo[index]['icon'],
                  title: cardInfo[index]['title'],
                  tagLine: cardInfo[index]['tagLine'],
                  unit: cardInfo[index]['unit'],
                );
              },
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: SmoothPageIndicator(
              controller: _controller,
              count: cardInfo.length,
              onDotClicked: (index) {
                _controller.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                );
              },
              effect: const WormEffect(
                type: WormType.thin,
                activeDotColor: Colors.red,
                paintStyle: PaintingStyle.stroke,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: double.maxFinite,
            height: 140,
            child: Card(
              elevation: 0.4,
            ),
          ),
          const SizedBox(
            height: 10,
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
