import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vodafone/widgets/bottom_navigation.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  final _controller = PageController();
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
        padding: const EdgeInsets.all(15),
        children: [
          SizedBox(
            height: 140,
            child: PageView(
              controller: _controller,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: // text
                        Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/data.svg',
                              color: Colors.red,
                              width: 40,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Data",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        RichText(
                          text: TextSpan(
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      fontWeight: FontWeight.normal,
                                    ),
                            text: "18.0",
                            children: [
                              TextSpan(
                                text: " MB left",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Card(
                  child: Text("Hi Me"),
                ),
                const Card(
                  child: Text("Hi You"),
                ),
              ],
            ),
          ),
          SmoothPageIndicator(controller: _controller, count: 3),
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
