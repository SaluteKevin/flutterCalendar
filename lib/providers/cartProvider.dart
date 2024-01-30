import 'package:calendar_app/Managers/order_db.dart';
import 'package:flutter/foundation.dart';
import 'package:calendar_app/models/ShoppingCart.dart';


class CartProvider with ChangeNotifier {
  List<ShoppingCart> cart = [
  ];

  List<ShoppingCart> getItem() {
    return cart;
  }

  void addItem(ShoppingCart item) {
    cart.insert(0, item);
    notifyListeners();
  }

  void removeItem(ShoppingCart item) {
    cart.remove(item);
    notifyListeners();
  }

}
