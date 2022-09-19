// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vodafone/theme/app.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {},
        child: Ink(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                Shadow.sm,
              ]),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.grey[700],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
              ),
              Spacer(),
              Icon(
                FeatherIcons.chevronRight,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
