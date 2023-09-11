import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_task_1/bloc/hotel_data_bloc/bloc/hotel_data_bloc.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_pictures/hotel_card_pictures.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_title.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_features.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_more_button.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_price.dart';
import 'package:flutter_test_task_1/screens/booking/booking.dart';
import 'package:flutter_test_task_1/util/go_to_screen.dart';

class HotelRoomCard extends StatelessWidget {
  final String title;
  final List<String> features;
  final int price;
  final String additionalInfo;

  const HotelRoomCard({
    super.key,
    required this.title,
    required this.features,
    required this.price,
    required this.additionalInfo,
  });

  @override
  Widget build(BuildContext context) {
    return HotelCard(
      children: [
        const HotelCardPictures(),
        const SizedBox(height: 8),
        HotelCardTitle(title),
        const SizedBox(height: 8),
        HotelFeatures(features),
        const SizedBox(height: 8),
        const HotelMoreButton(),
        const SizedBox(height: 16),
        HotelPrice(
          price: price,
          additionalInfo: additionalInfo,
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: () {
            context
                .read<HotelDataBloc>()
                .add(HotelDataSetRoomEvent(title, price));
            goToScreen(
              context,
              const Booking(),
            );
          },
          child: const Text('Выбрать номер'),
        )
      ],
    );
  }
}
