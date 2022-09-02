import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vodafone/data/card_info.dart';
import 'package:vodafone/widgets/my_card.dart';

class SwiperCards extends StatefulWidget {
  const SwiperCards({super.key});

  @override
  State<SwiperCards> createState() => _SwiperCardsState();
}

class _SwiperCardsState extends State<SwiperCards> {
  final _controller = PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
