import 'package:flutter/material.dart';

import '../models/tips.dart';
import '../theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  const TipsCard({Key? key, required this.tips}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 80,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 80,
            decoration: BoxDecoration(
              color: Color(tips.color),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(tips.imageUrl),
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(tips.name, style: subtitleTextSTyle),
              const SizedBox(height: 4),
              Text(tips.update, style: descTextStyle),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: lightGreyColor,
              ))
        ],
      ),
    );
  }
}
