import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Future<dynamic> bottomSheet(BuildContext context) {
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
      top: Radius.circular(10),
    )),
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Services",
                  style: Theme.of(context).textTheme.headline6,
                ),
                const CloseButton(
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              onTap: () {},
              title: const Text("Services"),
              subtitle: const Text("Add & manage services"),
              leading: SvgPicture.asset(
                'assets/devices.svg',
                width: 40,
              ),
              minLeadingWidth: 45,
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              title: const Text("Jeron Asiedu"),
              subtitle: const Text("0500070730"),
              leading: SvgPicture.asset(
                'assets/smart_phone.svg',
                width: 45,
              ),
              minLeadingWidth: 45,
            ),
            const Divider(),
          ],
        ),
      );
    },
  );
}
