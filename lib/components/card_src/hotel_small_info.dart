import 'package:flutter/material.dart';

class HotelSmallInfo extends StatelessWidget {
  final String smallInfo;
  const HotelSmallInfo(this.smallInfo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        smallInfo,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xFF828796),
        ),
      ),
    );
  }
}
