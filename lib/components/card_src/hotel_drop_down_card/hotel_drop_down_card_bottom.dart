part of 'hotel_drop_down_card.dart';

class HotelDropDownCardBottom extends StatelessWidget {
  final List<Widget> children;

  const HotelDropDownCardBottom({
    super.key,
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: children.isNotEmpty
          ? const EdgeInsets.only(
              top: 17,
              bottom: 3.0,
            )
          : EdgeInsets.zero,
      child: Column(
        children: children,
      ),
    );
  }
}
