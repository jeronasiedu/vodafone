// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Manage extends StatelessWidget {
  const Manage({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 16,
            ),
      ),
      onTap: () {},
      leading: Icon(icon),
    );
  }
}
