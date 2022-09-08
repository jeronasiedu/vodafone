import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ionicons/ionicons.dart';

class ManageItem {
  final String text;
  final IconData icon;

  ManageItem({required this.text, required this.icon});
}

List manageItems = [
  ManageItem(
    text: "My Subscriptions",
    icon: FeatherIcons.database,
  ),
  ManageItem(
    text: "Fixed Broadband",
    icon: Ionicons.git_network_outline,
  ),
  ManageItem(
    text: "Value-Added Services",
    icon: FeatherIcons.watch,
  ),
  ManageItem(
    text: "SIM Card Registration",
    icon: Ionicons.card_outline,
  ),
  ManageItem(
    text: "My Notifications",
    icon: FeatherIcons.messageCircle,
  ),
  ManageItem(
    text: "Red Loyalty",
    icon: FeatherIcons.box,
  ),
  ManageItem(
    text: "Settings",
    icon: Ionicons.settings_outline,
  ),
];
