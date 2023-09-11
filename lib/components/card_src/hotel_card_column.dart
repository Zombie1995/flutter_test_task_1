import 'package:flutter/material.dart';

class HotelCardColumn extends StatelessWidget {
  final List<Widget> children;
  const HotelCardColumn({
    super.key,
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...children,
        const SizedBox(
          height: 12,
        )
      ],
    );
  }
}
