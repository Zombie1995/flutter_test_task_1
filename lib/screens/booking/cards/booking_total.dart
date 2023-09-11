import 'package:flutter/material.dart';
import 'package:flutter_test_task_1/util/format_price.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_info_pair.dart';

class BookingTotal extends StatelessWidget {
  final int tourPrice;
  final int fuelPrice;
  final int servicePrice;

  const BookingTotal({
    super.key,
    required this.tourPrice,
    required this.fuelPrice,
    required this.servicePrice,
  });

  @override
  Widget build(BuildContext context) {
    return HotelCard(
      children: [
        HotelInfoPair(
          areOpposite: true,
          primary: '${formatPrice(tourPrice)} ₽',
          secondary: 'Тур',
        ),
        const SizedBox(height: 16),
        HotelInfoPair(
          areOpposite: true,
          primary: '${formatPrice(fuelPrice)} ₽',
          secondary: 'Топливный сбор',
        ),
        const SizedBox(height: 16),
        HotelInfoPair(
          areOpposite: true,
          primary: '${formatPrice(servicePrice)} ₽',
          secondary: 'Сервисный сбор',
        ),
        const SizedBox(height: 16),
        HotelInfoPair(
          isSpecial: true,
          areOpposite: true,
          primary: '${formatPrice(tourPrice + fuelPrice + servicePrice)} ₽',
          secondary: 'К оплате',
        ),
      ],
    );
  }
}
