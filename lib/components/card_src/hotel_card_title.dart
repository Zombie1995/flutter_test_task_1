import 'package:flutter/material.dart';

class HotelCardTitle extends StatelessWidget {
  final String title;

  const HotelCardTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
        ),
      ),
    );
  }
}
