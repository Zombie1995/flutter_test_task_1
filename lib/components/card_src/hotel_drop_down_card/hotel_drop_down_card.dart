import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_task_1/components/card_src/hotel_card_title.dart';
part 'hotel_drop_down_card_top.dart';
part 'hotel_drop_down_card_button.dart';
part 'hotel_drop_down_card_bottom.dart';

class HotelDropDownCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const HotelDropDownCard({
    super.key,
    this.children = const [],
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    ExpandableController controller = ExpandableController(
      initialExpanded: true,
    );

    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
          child: ExpandablePanel(
            controller: controller,
            collapsed: HotelDropDownCardTop(
              title: title,
              onTap: () {
                controller.expanded = true;
              },
            ),
            expanded: Column(
              children: [
                HotelDropDownCardTop(
                  title: title,
                  onTap: () {
                    controller.expanded = false;
                  },
                  expanded: true,
                ),
                HotelDropDownCardBottom(children: children),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
