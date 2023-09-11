import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const BottomButton(
    this.text, {
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Color.fromRGBO(130, 135, 150, 0.15),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16.0,
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}
