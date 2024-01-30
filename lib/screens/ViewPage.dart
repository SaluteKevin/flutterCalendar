import 'package:calendar_app/models/CalendarInfo.dart';
import 'package:calendar_app/models/ShoppingCart.dart';
import 'package:calendar_app/providers/cartProvider.dart';
import 'package:calendar_app/screens/CartPage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ViewPage extends StatelessWidget {
  final CalendarInfo calendar;
  final nameController = TextEditingController();
  ViewPage({super.key, required this.calendar});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Table", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            Image.asset(
              calendar.img,
              height: 300,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 10, 0, 0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          calendar.name,
                          textAlign: TextAlign.left,
                          style:
                              const TextStyle(color: Colors.blue, fontSize: 30),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "ประเภท: ${calendar.type}",
                          textAlign: TextAlign.left,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                    ),
                    calendar.stock == "0"
                        ? (const Padding(
                            padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                            child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "สินค้าหมด",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.red,
                                  ),
                                )),
                          ))
                        : Padding(
                            padding: const EdgeInsets.fromLTRB(24, 0, 36, 0),
                            child: SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text("มีสินค้า ${calendar.stock} ชื้น"),
                                        const Spacer(),
                                        Text(
                                          "${NumberFormat("#,###.##").format(calendar.price)} บาท",
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 28),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ),
                    if (calendar.stock != "0")
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.green),
                            onPressed: () {
                              ShoppingCart statement = ShoppingCart(
                                  calendar: calendar,
                                  amount: 1,
                                  date: DateTime.now());
                              var provider = Provider.of<CartProvider>(context,
                                  listen: false);
                              provider.addItem(statement);
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const CartPage();
                              }));
                            },
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                              child: Text(
                                "ใส่รถเข็น",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                            )),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
