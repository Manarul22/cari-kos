import 'package:flutter/material.dart';

import 'package:cari_kos/theme.dart';

class BottomNavigationItem extends StatelessWidget {

  final String imageUrl;
  final bool isActive;

  const BottomNavigationItem({
    Key? key,
    required this.imageUrl,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(imageUrl, width: 26, height: 26),
        const Spacer(),
        isActive ? Container(
          width: 30,
          height: 4,
          decoration: const BoxDecoration(
            color: purpleColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(1000)),
          ),
        ) : Container(),
      ],
    );
  }
}
