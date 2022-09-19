// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ionicons/ionicons.dart';
import 'package:vodafone/pages/manage_screens/fixed_broadband.dart';
import 'package:vodafone/pages/manage_screens/my_notifications.dart';
import 'package:vodafone/pages/manage_screens/my_subscriptions.dart';
import 'package:vodafone/pages/manage_screens/red_loyalty.dart';
import 'package:vodafone/pages/manage_screens/settings_page.dart';
import 'package:vodafone/pages/manage_screens/sim_registration.dart';
import 'package:vodafone/pages/manage_screens/value_added_services.dart';

class ManageItem {
  final String text;
  final IconData icon;
  final Widget screen;

  ManageItem({
    required this.text,
    required this.icon,
    required this.screen,
  });
}

List manageItems = [
  ManageItem(
      text: "My Subscriptions",
      icon: FeatherIcons.database,
      screen: MySubscriptionsPage()),
  ManageItem(
      text: "Fixed Broadband",
      icon: Ionicons.git_network_outline,
      screen: FixedBroadbandPage()),
  ManageItem(
      text: "Value-Added Services",
      icon: FeatherIcons.watch,
      screen: ValueAddedServicesPage()),
  ManageItem(
      text: "SIM Card Registration",
      icon: Ionicons.card_outline,
      screen: SimRegistrationPage()),
  ManageItem(
      text: "My Notifications",
      icon: FeatherIcons.messageCircle,
      screen: MyNotificationsPage()),
  ManageItem(
      text: "Red Loyalty", icon: FeatherIcons.box, screen: RedLoyaltyPage()),
  ManageItem(
    text: "Settings",
    icon: Ionicons.settings_outline,
    screen: SettingsPage(),
  ),
];
