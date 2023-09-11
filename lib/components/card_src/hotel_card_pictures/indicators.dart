part of 'package:flutter_test_task_1/components/card_src/hotel_card_pictures/hotel_card_pictures.dart';

class Indicators extends StatelessWidget {
  final int picturesLength;
  final int currentIndex;

  const Indicators({
    super.key,
    required this.picturesLength,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 7.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: List<Widget>.generate(picturesLength, (index) {
          final diff = (currentIndex - index).abs();

          double opacity = 1;

          switch (diff) {
            case == 0:
              opacity = 1;
              break;
            case == 1:
              opacity = 0.22;
              break;
            case == 2:
              opacity = 0.17;
              break;
            case == 3:
              opacity = 0.10;
              break;
            default:
              opacity = 0.05;
          }

          return Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 2.5,
            ),
            width: 7,
            height: 7,
            decoration: BoxDecoration(
              color: Color.fromRGBO(
                0,
                0,
                0,
                opacity,
              ),
              shape: BoxShape.circle,
            ),
          );
        }),
      ),
    );
  }
}
