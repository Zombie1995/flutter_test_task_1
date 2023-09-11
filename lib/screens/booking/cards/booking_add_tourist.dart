import 'package:flutter/material.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_title_button_card/hotel_title_button_card.dart';

class BookingAddTourist extends StatelessWidget {
  final void Function()? onTap;

  const BookingAddTourist({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return HotelTitleButtonCard(
      title: 'Добавить туриста',
      onTap: onTap,
    );
  }
}
