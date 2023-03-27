import 'package:cari_kos/models/space.dart';
import 'package:cari_kos/theme.dart';
import 'package:cari_kos/widgets/bottom_navigation_item.dart.dart';
import 'package:cari_kos/widgets/city_card.dart';
import 'package:cari_kos/widgets/space_card.dart';
import 'package:cari_kos/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import '../models/city.dart';
import '../models/tips.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text(
                    'Explore Now',
                    style: titleTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Mencari Kosan yang Cozy',
                  style: descTextStyle,
                ),
                const SizedBox(
                  height: 30,
                ),
                // POPULAR CITIES
                Text(
                  'Popular Cities',
                  style: subtitleTextSTyle,
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CityCard(
                        city: City(
                          id: 1,
                          name: 'Jakarta',
                          imageUrl: 'assets/images/pic (1).png',
                          isPopular: false,
                        ),
                      ),
                      const SizedBox(width: 20),
                      CityCard(
                        city: City(
                          id: 2,
                          name: 'Bandung',
                          imageUrl: 'assets/images/pic (2).png',
                          isPopular: true,
                        ),
                      ),
                      const SizedBox(width: 20),
                      CityCard(
                        city: City(
                          id: 3,
                          name: 'Surabaya',
                          imageUrl: 'assets/images/pic (6).png',
                          isPopular: false,
                        ),
                      ),
                      const SizedBox(width: 20),
                      CityCard(
                        city: City(
                          id: 4,
                          name: 'Makassar',
                          imageUrl: 'assets/images/pic (7).png',
                          isPopular: true,
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                // RECOMENDED SPACE
                Text('Recomended Space', style: subtitleTextSTyle),
                const SizedBox(height: 16),
                Column(
                  children: [
                    SpaceCard(
                      space: Space(
                        id: 1,
                        imageUrl: 'assets/images/pic (6).png',
                        rating: 4.5,
                        name: 'Kuroatsuki Hott',
                        price: 300,
                        city: 'Bandung',
                        country: 'Indonesia',
                      ),
                    ),
                    const SizedBox(height: 30),
                    SpaceCard(
                      space: Space(
                        id: 2,
                        imageUrl: 'assets/images/pic (7).png',
                        rating: 4.6,
                        name: 'White Hott',
                        price: 310,
                        city: 'Jakarta',
                        country: 'Indonesia',
                      ),
                    ),
                    const SizedBox(height: 30),
                    SpaceCard(
                      space: Space(
                        id: 3,
                        imageUrl: 'assets/images/pic (9).png',
                        rating: 4.5,
                        name: 'Orange Hott',
                        price: 400,
                        city: 'Surabaya',
                        country: 'Indonesia',
                      ),
                    ),
                    const SizedBox(height: 30),
                    SpaceCard(
                      space: Space(
                        id: 4,
                        imageUrl: 'assets/images/pic (11).png',
                        rating: 4.7,
                        name: 'Red Hott',
                        price: 320,
                        city: 'Makassar',
                        country: 'Indonesia',
                      ),
                    ),
                    const SizedBox(height: 30),
                    SpaceCard(
                      space: Space(
                        id: 4,
                        imageUrl: 'assets/images/pic (11).png',
                        rating: 4.7,
                        name: 'Red Hott',
                        price: 320,
                        city: 'Makassar',
                        country: 'Indonesia',
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),

                // TIPS & GUIDANCE
                Text('Tips & Guidance', style: subtitleTextSTyle),
                const SizedBox(height: 16),
                Column(
                  children: [
                    TipsCard(
                      tips: Tips(
                        id: 1,
                        imageUrl: 'assets/images/tips1.png',
                        name: 'City Guidlines',
                        update: 'Update 20 Apr',
                        color: 0xFFd8d8f8,
                      ),
                    ),
                    const SizedBox(height: 30),
                    TipsCard(
                      tips: Tips(
                        id: 1,
                        imageUrl: 'assets/images/tips2.png',
                        name: 'Jakarta Fairy',
                        update: 'Update 20 Apr',
                        color: 0xFFc8e5fd,
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: // Bottom Navigation Bar
          Container(
        width: 327,
        height: 65,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomNavigationItem(
              imageUrl: 'assets/images/home.png',
              isActive: true,
            ),
            BottomNavigationItem(
              imageUrl: 'assets/images/email.png',
              isActive: false,
            ),
            BottomNavigationItem(
              imageUrl: 'assets/images/card.png',
              isActive: false,
            ),
            BottomNavigationItem(
              imageUrl: 'assets/images/love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
