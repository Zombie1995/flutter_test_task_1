import 'package:flutter/material.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_input.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_drop_down_card/hotel_drop_down_card.dart';

class BookingTouristCard extends StatelessWidget {
  final String title;

  const BookingTouristCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return HotelDropDownCard(
      title: title,
      children: const [
        HotelCardInput(
          hintText: 'Иван',
          labelText: 'Имя',
        ),
        SizedBox(height: 8),
        HotelCardInput(
          hintText: 'Иванов',
          labelText: 'Фамилия',
        ),
        SizedBox(height: 8),
        HotelCardInput(
          hintText: '01.01.1991',
          labelText: 'Дата рождения',
        ),
        SizedBox(height: 8),
        HotelCardInput(
          hintText: 'Россия',
          labelText: 'Гражданство',
        ),
        SizedBox(height: 8),
        HotelCardInput(
          hintText: '',
          labelText: 'Номер загранпаспорта',
        ),
        SizedBox(height: 8),
        HotelCardInput(
          hintText: '',
          labelText: 'Срок действия загранпаспорта',
        ),
      ],
    );
  }
}
