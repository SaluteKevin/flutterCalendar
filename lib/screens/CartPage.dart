import 'package:calendar_app/models/ShoppingCart.dart';
import 'package:calendar_app/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart", style: TextStyle(color: Colors.white)),
      ),
      body: Consumer<CartProvider>(builder: (context, value, child) {
        var count = value.cart.length;
        if (count <= 0) {
          return Center(
            child: Text(
              "ยังไม่มีสินค้าในนี้",
              style: TextStyle(fontSize: 32),
            ),
          );
        } else {
          return ListView.builder(
              itemCount: value.cart.length,
              itemBuilder: (context, int index) {
                ShoppingCart data = value.cart[index];
                return Card(
                  elevation: 1,
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      leading: SizedBox(
                        child: Image.asset(
                          data.calendar.img,
                        ),
                      ),
                      title: Text(data.calendar.name),
                      subtitle: Text("${data.calendar.price} บาท"),
                    ),
                  ),
                );
              });
        }
      }),
    );
  }
}
