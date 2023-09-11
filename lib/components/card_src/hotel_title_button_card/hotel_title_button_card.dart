import 'package:flutter/material.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_title.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_title_button_card/hotel_add_button.dart';

class HotelTitleButtonCard extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const HotelTitleButtonCard({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
          child: Row(children: [
            Expanded(
              child: HotelCardTitle(title),
            ),
            HotelAddButton(onTap: onTap),
          ]),
        ),
      ),
    );
  }
}
