// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.tagLine,
    required this.amountLeft,
    required this.unit,
  }) : super(key: key);
  final String icon;
  final String title;
  final String tagLine;
  final String amountLeft;
  final String unit;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: // text
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  icon,
                  color: Colors.red,
                  width: 40,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                text: amountLeft,
                children: [
                  TextSpan(
                    text: " $unit left",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              tagLine,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text("Expires on:")
          ],
        ),
      ),
    );
  }
}
