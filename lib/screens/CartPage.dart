import 'package:calendar_app/models/CalendarInfo.dart';
import 'package:calendar_app/providers/payment_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewItem extends StatelessWidget {
  const ViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Daily Table",
        home: MultiProvider(providers: [
          ChangeNotifierProvider(create: (context){
            return PaymentProvider();
          })
        ],
        child: const CartPage()),
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: AppBarTheme(color: Colors.blue[300]),
        ),
      );
  }
}

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

CalendarInfo calendar = CalendarInfo(
    "ปฏิทินเฉลิมฉลอง", "Desktop", 100, "assets/images/image11.jpg", "0");

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Carts", style: TextStyle(color: Colors.white)),
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (contest, int index) {
              return Card(
                  elevation: 1,
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      leading: SizedBox(
                        child: Image.asset(
                          calendar.img,
                        ),
                      ),
                      title: Text(calendar.name),
                      subtitle: Text("${calendar.price} บาท"),
                    ),
                  ),
                );
  }));
  }
}
