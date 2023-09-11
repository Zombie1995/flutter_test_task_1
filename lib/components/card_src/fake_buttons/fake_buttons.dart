import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_task_1/components/card_src/fake_buttons/fake_button.dart';

class FakeButtons extends StatelessWidget {
  const FakeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFFBFBFC),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            FakeButton(
              icon: SvgPicture.asset(
                'assets/icons/emoji-happy.svg',
              ),
              title: 'Удобства',
              subtitle: 'Самое необходимое',
            ),
            const Divider(
              indent: 48,
              endIndent: 10,
              height: 0,
              color: Color.fromRGBO(130, 135, 150, 0.15),
            ),
            FakeButton(
              icon: SvgPicture.asset(
                'assets/icons/tick-square.svg',
              ),
              title: 'Что включено',
              subtitle: 'Самое необходимое',
            ),
            const Divider(
              indent: 48,
              endIndent: 10,
              height: 0,
              color: Color.fromRGBO(130, 135, 150, 0.15),
            ),
            FakeButton(
              icon: SvgPicture.asset(
                'assets/icons/close-square.svg',
              ),
              title: 'Что не включено',
              subtitle: 'Самое необходимое',
            ),
          ],
        ),
      ),
    );
  }
}
