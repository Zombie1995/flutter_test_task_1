import 'package:flutter/material.dart';

class HotelInfoPair extends StatelessWidget {
  final String primary;
  final String secondary;
  final bool areOpposite;
  final bool isSpecial;

  const HotelInfoPair({
    super.key,
    required this.primary,
    required this.secondary,
    this.areOpposite = false,
    this.isSpecial = false,
  });

  @override
  Widget build(BuildContext context) {
    Text secondaryText = Text(
      secondary,
      style: const TextStyle(
        color: Color(0xFF828796),
        fontWeight: FontWeight.w400,
      ),
    );
    Text primaryText = Text(
      primary,
      style: TextStyle(
        color: isSpecial ? const Color(0xFF0D72FF) : null,
        fontWeight: isSpecial ? FontWeight.w600 : FontWeight.w400,
      ),
    );

    return Row(
      children: areOpposite
          ? [
              Expanded(
                child: secondaryText,
              ),
              primaryText,
            ]
          : [
              SizedBox(
                width: 140,
                child: secondaryText,
              ),
              Flexible(
                child: primaryText,
              )
            ],
    );
  }
}
