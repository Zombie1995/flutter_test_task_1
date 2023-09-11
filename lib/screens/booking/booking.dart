import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_task_1/util/format_price.dart';
import 'package:flutter_test_task_1/bloc/hotel_data_bloc/bloc/hotel_data_bloc.dart';
import 'package:flutter_test_task_1/components/bottom_button.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_column.dart';
import 'package:flutter_test_task_1/screens/booking/cards/booking_add_tourist.dart';
import 'package:flutter_test_task_1/screens/booking/cards/booking_info_about_buyer_card.dart';
import 'package:flutter_test_task_1/screens/booking/cards/booking_info_card.dart';
import 'package:flutter_test_task_1/screens/booking/cards/booking_top_card.dart';
import 'package:flutter_test_task_1/screens/booking/cards/booking_total.dart';
import 'package:flutter_test_task_1/screens/booking/cards/booking_tourist_card.dart';
import 'package:flutter_test_task_1/screens/paid/paid.dart';
import 'package:flutter_test_task_1/util/go_to_screen.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  List<Widget> touristCards = [
    const BookingTouristCard(title: 'Первый турист'),
  ];

  @override
  Widget build(BuildContext context) {
    final String room = context.select((HotelDataBloc bloc) => bloc.state.room);
    final int roomCost =
        context.select((HotelDataBloc bloc) => bloc.state.roomCost);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Бронирование'),
        leading: IconButton(
          icon: RotatedBox(
            quarterTurns: 2,
            child: SvgPicture.asset('assets/icons/right-arrow.svg'),
          ),
          onPressed: () => backToPreviousScreen(context),
        ),
      ),
      bottomNavigationBar: BottomButton(
        'Оплатить ${formatPrice(roomCost + 9300 + 2136)} ₽',
        onPressed: () => goToScreen(
          context,
          const Paid(),
        ),
      ),
      body: SingleChildScrollView(
        child: HotelCardColumn(
          children: [
            const BookingTopCard(
              title: 'Steigenberger Makadi',
              location: 'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
            ),
            BookingInfoCard(
              flightFrom: 'Санкт-Петербург',
              countryCity: 'Египет, Хургада',
              dates: '19.09.2023-27.09.2023',
              duration: '7 ночей',
              hotel: 'Steigenberger Makadi',
              room: room,
              food: 'Все включено',
            ),
            const BookingInfoAboutBuyerCard(),
            ...touristCards,
            BookingAddTourist(
              onTap: () => setState(() {
                touristCards.add(
                  BookingTouristCard(
                      title: touristCards.length == 1
                          ? 'Второй турист'
                          : '${touristCards.length + 1}-й турист'),
                );
              }),
            ),
            BookingTotal(
              tourPrice: roomCost,
              fuelPrice: 9300,
              servicePrice: 2136,
            ),
          ],
        ),
      ),
    );
  }
}
