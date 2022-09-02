// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vodafone/theme/app.dart';

class UserActivity extends StatelessWidget {
  const UserActivity({
    Key? key,
    required this.buttonText,
    required this.desc,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final String buttonText;
  final String desc;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 180,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: const [
            Shadow.sm,
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Colors.red[500],
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 17,
                ),
              ),
            ),
            Text(desc),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(
                  double.maxFinite,
                  32,
                ),
                elevation: 0,
              ),
              child: Text(buttonText),
            )
          ],
        ),
      ),
    );
  }
}
