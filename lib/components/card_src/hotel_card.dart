import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  final bool cutTop;
  final List<Widget> children;

  const HotelCard({
    super.key,
    this.cutTop = false,
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: cutTop ? EdgeInsets.zero : const EdgeInsets.only(top: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: cutTop
              ? const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                )
              : BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: cutTop ? 0 : 16,
            bottom: 16,
            left: 16,
            right: 16,
          ),
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
