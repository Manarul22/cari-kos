import 'package:cari_kos/theme.dart';
import 'package:cari_kos/widgets/rating.dart';
import 'package:flutter/material.dart';

import '../widgets/circle_icon.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset('assets/images/pic (9).png', fit: BoxFit.cover),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleIcon(
                  icon: Icons.arrow_back_ios_new_outlined,
                ),
                CircleIcon(
                  icon: Icons.favorite_outline,
                ),
              ],
            ),
            ListView(
              children: [
                const SizedBox(height: 328),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Kuretakeso Hott', style: subtitleTextSTyle.copyWith(fontSize: 22)),
                                Row(children: [
                                  Text('\$${523}', style: subtitleTextSTyle.copyWith(color: purpleColor),),
                                  Text(' /month', style: descTextStyle),
                                ],)
                              ],
                            ),
                            const SizedBox(height: 2),
                            const Rating(value: 3),
                          ]
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],

        ),
      ),
    );
  }
}

