import 'package:calendar_app/models/payment.dart';
import 'package:flutter/foundation.dart';

import '../models/CalendarInfo.dart';

CalendarInfo calendar = CalendarInfo(
      "ปฏิทินเฉลิมฉลอง", "Desktop", 100, "assets/images/image11.jpg", "0");

class PaymentProvider with ChangeNotifier{
    List<Payment>
    payments = [
      Payment(title: "calendar.name", amount: calendar.price, date: DateTime.now()),
      Payment(title: "calendar.name", amount: calendar.price, date: DateTime.now()),
    ];

  List<Payment> getPayment(){
    return payments;
  }

  addPayment(Payment statement){
    payments.add(statement);
  }
}