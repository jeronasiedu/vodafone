import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:ionicons/ionicons.dart';
import 'package:vodafone/theme/app.dart';

class UserBalance extends StatefulWidget {
  const UserBalance({Key? key}) : super(key: key);

  @override
  State<UserBalance> createState() => _UserBalanceState();
}

class _UserBalanceState extends State<UserBalance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
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
          Text(
            "Airtime Balance",
            style: Theme.of(context).textTheme.headline6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                const Icon(
                  FeatherIcons.activity,
                  color: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "GHc 0.00",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )
              ],
            ),
          ),
          Row(
            children: const [
              Icon(
                Ionicons.cloud_download_outline,
                color: Colors.red,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "Last updated: 11: 09 pm",
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              "0500070730",
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    letterSpacing: 1,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
