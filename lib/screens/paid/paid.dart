import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_task_1/components/bottom_button.dart';
import 'package:flutter_test_task_1/util/go_to_screen.dart';

class Paid extends StatelessWidget {
  const Paid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Заказ оплачен'),
        leading: IconButton(
          icon: RotatedBox(
            quarterTurns: 2,
            child: SvgPicture.asset('assets/icons/right-arrow.svg'),
          ),
          onPressed: () => backToFirstScreen(context),
        ),
      ),
      bottomNavigationBar: BottomButton(
        'Супер!',
        onPressed: () => backToFirstScreen(context),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 122),
              Image.asset(
                'assets/icons/party-popper.png',
                height: 94,
                width: 94,
              ),
              const SizedBox(height: 32),
              const Text(
                'Ваш заказ принят в работу',
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 20),
              const Text(
                'Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF828796),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
