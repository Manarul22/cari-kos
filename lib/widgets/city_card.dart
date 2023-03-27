import 'package:flutter/material.dart';

import 'package:cari_kos/theme.dart';

import '../models/city.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 120,
        height: 150,
        color: boxColor,
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 102,
                  child: Image.asset(
                    city.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  city.name,
                  style: subtitleTextSTyle,
                ),
              ],
            ),
            city.isPopular
                ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Image.asset('assets/images/star.png',
                            width: 22, height: 22),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
