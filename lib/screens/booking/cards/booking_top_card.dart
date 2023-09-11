import 'package:flutter/material.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_title.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_location.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_rating.dart';

class BookingTopCard extends StatelessWidget {
  final String title;
  final String location;

  const BookingTopCard({
    super.key,
    required this.title,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return HotelCard(
      children: [
        const HotelRating(),
        const SizedBox(height: 8),
        HotelCardTitle(title),
        const SizedBox(height: 8),
        HotelLocation(location),
      ],
    );
  }
}
