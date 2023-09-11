import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_column.dart';
import 'package:flutter_test_task_1/screens/hotel_room/cards/hotel_room_card.dart';
import 'package:flutter_test_task_1/util/go_to_screen.dart';

class HotelRoom extends StatelessWidget {
  const HotelRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Steigenberger Makadi',
        ),
        leading: IconButton(
          icon: RotatedBox(
            quarterTurns: 2,
            child: SvgPicture.asset('assets/icons/right-arrow.svg'),
          ),
          onPressed: () => backToPreviousScreen(context),
        ),
      ),
      body: const SingleChildScrollView(
        child: HotelCardColumn(
          children: [
            HotelRoomCard(
              title: 'Стандартный с видом на бассейн или сад',
              features: [
                'Все включено',
                'Кондиционер',
              ],
              price: 186600,
              additionalInfo: 'за 7 ночей с перелётом',
            ),
            HotelRoomCard(
              title: 'Нестандартный с видом на бассейн или сад',
              features: [
                'Все включено',
                'Кондиционер',
              ],
              price: 286600,
              additionalInfo: 'за 7 ночей с перелётом',
            ),
          ],
        ),
      ),
    );
  }
}
