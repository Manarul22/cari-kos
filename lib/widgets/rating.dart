import 'package:cari_kos/theme.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int value;
  const Rating({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        5,
        (index) => Icon(
          index < value ? Icons.star : Icons.star_border,
          color: orangeColor,
        ),
      ),
    );
  }
}
