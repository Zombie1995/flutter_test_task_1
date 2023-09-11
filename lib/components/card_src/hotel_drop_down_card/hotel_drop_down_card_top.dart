part of 'hotel_drop_down_card.dart';

class HotelDropDownCardTop extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool expanded;

  const HotelDropDownCardTop({
    super.key,
    required this.title,
    this.onTap,
    this.expanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: HotelCardTitle(title)),
        HotelDropDownCardButton(
          onTap: onTap,
          expanded: expanded,
        ),
      ],
    );
  }
}
