// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Manage extends StatelessWidget {
  const Manage({
    Key? key,
    required this.text,
    required this.icon,
    required this.screen,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Widget screen;
  @override
  Widget build(BuildContext context) {
    final iconColor = Theme.of(context).colorScheme.primary;
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => screen,
          ),
        );
      },
      title: Text(
        text,
        style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 16,
            ),
      ),
      trailing: Icon(
        FeatherIcons.chevronRight,
        color: iconColor,
      ),
      leading: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
