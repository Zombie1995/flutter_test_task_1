import 'package:flutter/material.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_pictures/hotel_card_pictures.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_location.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_price.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_rating.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_title.dart';

class HotelMainInfoCard extends StatelessWidget {
  final RatingType ratingType;
  final String title;
  final String location;
  final int price;
  final String additionalInfo;

  const HotelMainInfoCard({
    super.key,
    required this.ratingType,
    required this.title,
    required this.location,
    required this.price,
    required this.additionalInfo,
  });

  @override
  Widget build(BuildContext context) {
    return HotelCard(
      cutTop: true,
      children: [
        const HotelCardPictures(),
        const SizedBox(height: 16),
        const HotelRating(),
        const SizedBox(height: 8),
        HotelCardTitle(title),
        const SizedBox(height: 8),
        HotelLocation(location),
        const SizedBox(height: 16),
        HotelPrice(
          isMinimalPrice: true,
          price: price,
          additionalInfo: additionalInfo,
        )
      ],
    );
  }
}
