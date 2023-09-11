import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotelAddButton extends StatefulWidget {
  final void Function()? onTap;

  const HotelAddButton({super.key, this.onTap});

  @override
  State<HotelAddButton> createState() => _HotelAddButtonState();
}

class _HotelAddButtonState extends State<HotelAddButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (hovering) {
        setState(() {
          isHovered = hovering;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isHovered
              ? const Color.fromARGB(255, 13, 107, 238)
              : const Color(0xff0d72ff),
        ),
        child: SvgPicture.asset(
          'assets/icons/plus.svg',
          height: 24,
          width: 24,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
