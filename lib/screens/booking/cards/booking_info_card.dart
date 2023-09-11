import 'package:flutter/material.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_info_pair.dart';

class BookingInfoCard extends StatelessWidget {
  final String flightFrom;
  final String countryCity;
  final String dates;
  final String duration;
  final String hotel;
  final String room;
  final String food;

  const BookingInfoCard({
    super.key,
    required this.flightFrom,
    required this.countryCity,
    required this.dates,
    required this.duration,
    required this.hotel,
    required this.room,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return HotelCard(
      children: [
        HotelInfoPair(
          secondary: 'Вылет из',
          primary: flightFrom,
        ),
        const SizedBox(height: 16),
        HotelInfoPair(
          secondary: 'Страна, город',
          primary: countryCity,
        ),
        const SizedBox(height: 16),
        HotelInfoPair(
          secondary: 'Даты',
          primary: dates,
        ),
        const SizedBox(height: 16),
        HotelInfoPair(
          secondary: 'Кол-во ночей',
          primary: duration,
        ),
        const SizedBox(height: 16),
        HotelInfoPair(
          secondary: 'Отель',
          primary: hotel,
        ),
        const SizedBox(height: 16),
        HotelInfoPair(
          secondary: 'Номер',
          primary: room,
        ),
        const SizedBox(height: 16),
        HotelInfoPair(
          secondary: 'Питание',
          primary: food,
        ),
      ],
    );
  }
}
