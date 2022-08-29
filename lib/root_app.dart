import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vodafone/data/card_info.dart';
import 'package:vodafone/widgets/bottom_navigation.dart';
import 'package:vodafone/widgets/my_card.dart';

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
            const Text("050 0070 730")
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
          Text(
            "What do you want to do?",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
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
