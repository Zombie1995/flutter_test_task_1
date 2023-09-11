import 'package:flutter/material.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_input.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_title.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_small_info.dart';

class BookingInfoAboutBuyerCard extends StatelessWidget {
  const BookingInfoAboutBuyerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const HotelCard(
      children: [
        HotelCardTitle('Информация о покупателе'),
        SizedBox(height: 20),
        HotelCardInput(
          hintText: '+7 (951) 555-99-00',
          labelText: 'Номер телефона',
        ),
        SizedBox(height: 8),
        HotelCardInput(
          hintText: 'examplemail.000@mail.ru',
          labelText: 'Почта',
        ),
        SizedBox(height: 8),
        HotelSmallInfo(
          'Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту',
        ),
      ],
    );
  }
}
