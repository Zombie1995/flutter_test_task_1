import 'package:flutter/material.dart';

class HotelAboutInfo extends StatelessWidget {
  final String text;
  const HotelAboutInfo(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(0, 0, 0, 0.9),
        ),
      ),
    );
  }
}
