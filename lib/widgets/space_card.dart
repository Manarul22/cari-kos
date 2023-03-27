import 'package:cari_kos/models/space.dart';
import 'package:cari_kos/pages/detail_page.dart';
import 'package:cari_kos/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {

  final Space space;

  const SpaceCard({Key? key, required this.space}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage(),));
        },
        child: Container(
          width: 329,
          height: 110,
          color: boxColor,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: SizedBox(
                  width: 130,
                  height: 110,
                  child: Stack(
                    children: [
                      Image.asset(
                        space.imageUrl,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 70,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/star.png',
                                width: 22,
                                height: 22,
                              ),
                              Text(
                                '${space.rating}',
                                style: buttonTextStyle.copyWith(fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(space.name, style: subtitleTextSTyle),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Text(
                        '\$${space.price}',
                        style: subtitleTextSTyle.copyWith(color: purpleColor),
                      ),
                      Text(' / month', style: descTextStyle),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text('${space.city}, ${space.country}', style: descTextStyle),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
