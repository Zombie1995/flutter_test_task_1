part of 'hotel_drop_down_card.dart';

class HotelDropDownCardButton extends StatefulWidget {
  final void Function()? onTap;
  final bool expanded;

  const HotelDropDownCardButton({super.key, this.onTap, this.expanded = false});

  @override
  State<HotelDropDownCardButton> createState() =>
      _HotelDropDownCardButtonState();
}

class _HotelDropDownCardButtonState extends State<HotelDropDownCardButton> {
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
          color: Color.fromRGBO(13, 114, 255, isHovered ? 0.15 : 0.1),
        ),
        child: RotatedBox(
          quarterTurns: widget.expanded ? 3 : 1,
          child: SvgPicture.asset('assets/icons/right-arrow.svg',
              colorFilter: const ColorFilter.mode(
                Color(0xFF0D72FF),
                BlendMode.srcIn,
              ),
              height: 24,
              width: 24,
              fit: BoxFit.scaleDown),
        ),
      ),
    );
  }
}
