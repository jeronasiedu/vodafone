import 'package:flutter/material.dart';
import 'package:vodafone/data/manage_info.dart';
import 'package:vodafone/widgets/activities.dart';
import 'package:vodafone/widgets/manage.dart';
import 'package:vodafone/widgets/swiper_cards.dart';
import 'package:vodafone/widgets/user_balance.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

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
            const Text(
              "0500070730",
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(12),
        children: [
          const SwiperCards(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 14),
            child: UserBalance(),
          ),
          Text(
            "What do you want to do?",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Activies(),
          Text(
            "Manage",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          ListView.separated(
            padding: const EdgeInsets.only(top: 8),
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) {
              return Manage(
                text: manageItems[index].text,
                icon: manageItems[index].icon,
              );
            },
            separatorBuilder: (context, index) => const Divider(
              height: 0,
            ),
            itemCount: manageItems.length,
          )
        ],
      ),
    );
  }
}
