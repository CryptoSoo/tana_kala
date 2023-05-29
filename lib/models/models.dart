import 'package:flutter/material.dart';

class FavList extends StatelessWidget {
  final String text;
  final String image;

  const FavList({
    required this.text,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
        ),
        Image.asset(image),
      ],
    );
  }
}
