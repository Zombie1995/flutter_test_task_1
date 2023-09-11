import 'package:flutter/material.dart';

class HotelLocation extends StatelessWidget {
  final String location;
  const HotelLocation(this.location, {super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        location,
        style: const TextStyle(
          color: Color(0xFF0D72FF),
          fontSize: 14,
        ),
      ),
    );
  }
}
