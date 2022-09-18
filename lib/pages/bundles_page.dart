import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vodafone/data/bundle_page_data.dart';
import 'package:vodafone/theme/app.dart';

class BundlesPage extends StatelessWidget {
  const BundlesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Offers"),
      ),
      body: GridView.builder(
        itemCount: bundlePageData.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 0.7,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Ink(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  Shadow.sm,
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      bundlePageData[index]['image'],
                      width: 35,
                      color: Colors.red,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        bundlePageData[index]['title'],
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
