import 'package:flutter/material.dart';

class HotelCardInput extends StatelessWidget {
  final String hintText;
  final String labelText;
  const HotelCardInput({
    super.key,
    required this.hintText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFF6F6F9),
      ),
      child: TextFormField(
        style: const TextStyle(
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
        ),
      ),
    );
  }
}
