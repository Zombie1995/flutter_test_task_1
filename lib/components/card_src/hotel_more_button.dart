import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotelMoreButton extends StatelessWidget {
  const HotelMoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(13, 114, 255, 0.1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 2.5,
            bottom: 2.5,
            left: 10,
            right: 2,
          ),
          child: Wrap(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 2.5),
                child: Text(
                  'Подробнее о номере',
                  style: TextStyle(
                    color: Color(0xFF0D72FF),
                  ),
                ),
              ),
              const SizedBox(width: 2),
              SvgPicture.asset(
                'assets/icons/right-arrow.svg',
                colorFilter: const ColorFilter.mode(
                  Color(0xFF0D72FF),
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 2),
            ],
          ),
        ),
      ),
    );
  }
}
