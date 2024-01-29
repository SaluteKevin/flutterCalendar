import 'package:calendar_app/database/order_db.dart';
import 'package:flutter/foundation.dart';
import 'package:calendar_app/models/ShoppingCart.dart';

import '../models/CalendarInfo.dart';

class CartProvider with ChangeNotifier{
  List<ShoppingCart> cart = [
    ShoppingCart(calendar: CalendarInfo("ปฏิทินรูปสัตว์", "Desktop", 100, "assets/images/image1.jpg",
        "20"), amount: 20, date: DateTime.now()),
  ];

  List<ShoppingCart> getItem(){
    return cart;
  }

  void addItem(ShoppingCart item){
    var db = OrderDB(dbName: 'calendar.db').openDatabase();
    print(db);
    cart.insert(0, item);
    notifyListeners();
  }
}