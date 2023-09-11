import 'package:flutter/material.dart';
import 'package:flutter_test_task_1/components/card_src/fake_buttons/fake_buttons.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_about_info.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_title.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_features.dart';

class HotelAboutCard extends StatelessWidget {
  final List<String> features;
  final String aboutInfo;

  const HotelAboutCard({
    super.key,
    required this.features,
    required this.aboutInfo,
  });

  @override
  Widget build(BuildContext context) {
    return HotelCard(
      children: [
        const HotelCardTitle('Об отеле'),
        const SizedBox(height: 16),
        HotelFeatures(features),
        const SizedBox(height: 12),
        HotelAboutInfo(aboutInfo),
        const SizedBox(height: 16),
        const FakeButtons(),
      ],
    );
  }
}
