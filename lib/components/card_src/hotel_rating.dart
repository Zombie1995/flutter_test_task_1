import 'package:flutter/material.dart';

enum RatingType {
  perfect,
  veryGood,
  good,
  bad,
  veryBad,
}

class HotelRating extends StatelessWidget {
  const HotelRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: const Color.fromRGBO(255, 199, 0, 0.2),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          child: Text(
            '★ 5 Превосходно',
            style: TextStyle(
              color: Color(0xFFFFA800),
            ),
          ),
        ),
      ),
    );
  }
}
