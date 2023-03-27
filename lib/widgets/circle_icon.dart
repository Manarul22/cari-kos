import 'package:flutter/material.dart';

import '../theme.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;

  const CircleIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 30, right: 24),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            icon,
            color: lightGreyColor,
          ),
        ),
      ),
    );
  }
}
