import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:vodafone/pages/custom_list_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        child: ListView(
          padding: const EdgeInsets.all(12),
          physics: BouncingScrollPhysics(),
          children: [
            CustomListTile(
              text: "Device Permissions",
              icon: FeatherIcons.edit3,
            ),
            CustomListTile(
              text: "Change Password",
              icon: FeatherIcons.eyeOff,
            ),
            CustomListTile(
              text: "SMS Campaigns",
              icon: FeatherIcons.bell,
            ),
            CustomListTile(
              text: "Change Theme",
              icon: Ionicons.phone_portrait_outline,
            ),
          ],
        ),
      ),
    );
  }
}
