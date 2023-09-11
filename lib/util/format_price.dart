import 'package:intl/intl.dart';

String formatPrice(int number) {
  return NumberFormat.decimalPattern().format(number).replaceAll(',', ' ');
}
