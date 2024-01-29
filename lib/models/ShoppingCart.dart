import 'package:calendar_app/models/CalendarInfo.dart';

class ShoppingCart{
  CalendarInfo calendar;
  double amount;
  DateTime date;

  ShoppingCart({required this.calendar, required this.amount, required this.date});
}