import 'package:flutter/cupertino.dart';

void goToScreen(BuildContext context, Widget screen) {
  Navigator.of(context).push(CupertinoPageRoute(builder: (context) => screen));
}

void backToPreviousScreen(BuildContext context) {
  Navigator.pop(context);
}

void backToFirstScreen(BuildContext context) {
  Navigator.popUntil(context, (Route<dynamic> predicate) => predicate.isFirst);
}
