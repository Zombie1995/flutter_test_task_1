import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FakeButton extends StatelessWidget {
  final SvgPicture icon;
  final String title;
  final String subtitle;

  const FakeButton({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF828796),
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset('assets/icons/right-arrow.svg'),
        ],
      ),
    );
  }
}
