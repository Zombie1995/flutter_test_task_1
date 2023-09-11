import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test_task_1/components/bottom_button.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_column.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_rating.dart';
import 'package:flutter_test_task_1/screens/hotel/cards/hotel_about_card.dart';
import 'package:flutter_test_task_1/screens/hotel/cards/hotel_main_card.dart';
import 'package:flutter_test_task_1/screens/hotel_room/hotel_room.dart';
import 'package:flutter_test_task_1/util/go_to_screen.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.hotel),
      ),
      bottomNavigationBar: BottomButton(
        AppLocalizations.of(context)!.chooseRoom,
        onPressed: () => goToScreen(
          context,
          const HotelRoom(),
        ),
      ),
      body: const SingleChildScrollView(
        child: HotelCardColumn(
          children: [
            HotelMainInfoCard(
              ratingType: RatingType.perfect,
              title: 'Steigenberger Makadi',
              location: 'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
              price: 134673,
              additionalInfo: 'за тур с перелетом',
            ),
            HotelAboutCard(
              features: [
                '3-я линия',
                'Платный Wi-Fi в фойе',
                '30 км до аэропорта',
                '1 км до пляжа',
              ],
              aboutInfo:
                  'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
            ),
          ],
        ),
      ),
    );
  }
}
