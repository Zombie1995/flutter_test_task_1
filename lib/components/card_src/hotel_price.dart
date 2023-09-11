import 'package:flutter/material.dart';
import 'package:flutter_test_task_1/util/format_price.dart';

class HotelPrice extends StatelessWidget {
  final int price;
  final bool isMinimalPrice;
  final String additionalInfo;

  const HotelPrice({
    super.key,
    required this.price,
    this.isMinimalPrice = false,
    required this.additionalInfo,
  });

  @override
  Widget build(BuildContext context) {
    String formattedCost = formatPrice(price);

    return Align(
        alignment: Alignment.topLeft,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${isMinimalPrice ? 'от ' : ''}$formattedCost ₽',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: ' $additionalInfo',
                style: const TextStyle(
                  color: Color(0xFF828796),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ));
  }
}
