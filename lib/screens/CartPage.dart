import 'package:calendar_app/models/ShoppingCart.dart';
import 'package:calendar_app/providers/cartProvider.dart';
import 'package:calendar_app/screens/ViewPage.dart';
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
          return const Center(
            child: Text(
              "ยังไม่มีสินค้าในนี้",
              style: const TextStyle(fontSize: 32),
            ),
          );
        } else {
          return ListView.builder(
              itemCount: value.cart.length,
              itemBuilder: (context, int index) {
                ShoppingCart data = value.cart[index];
                return 
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ViewPage(calendar: data.calendar)
                      ),
                    );
                  },
                  child: Card(
                    elevation: 1,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Image.asset(
                                data.calendar.img,
                                height: 120,
                                width: 120,
                              ),
                            ),
                            Column(
                              children: [
                                Text(data.calendar.name),
                                Text("${data.calendar.price} บาท"),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                              child: IconButton(
                                  onPressed: () {
                                    Provider.of<CartProvider>(context,
                                            listen: false)
                                        .removeItem(value.cart[index]);
                                  },
                                  icon: const Icon(
                                    Icons.remove_shopping_cart,
                                    color: Colors.grey,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                );
              });
        }
      }),
    );
  }
}
