import 'package:calendar_app/models/CalendarInfo.dart';
import 'package:calendar_app/screens/CartPage.dart';
import 'package:flutter/material.dart';

class ViewItem extends StatelessWidget {
  const ViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Daily Table",
        home: ViewPage(),
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: AppBarTheme(color: Colors.blue[300]),
        ));
  }
}

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  CalendarInfo calendar = CalendarInfo(
      "ปฏิทินเฉลิมฉลอง", "Desktop", 100, "assets/images/image11.jpg", "0");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Table", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset(
              calendar.img,
              height: 300,
              fit: BoxFit.cover,
            ),
            Expanded(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 10, 0, 0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      calendar.name,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.blue, fontSize: 30),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      "ประเภท: ${calendar.type}",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey, fontSize: 18),
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
                        padding: EdgeInsets.fromLTRB(24, 0, 36, 0),
                        child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("มีสินค้า ${calendar.stock} ชื้น"),
                                    Spacer(),
                                    Text(
                                      "${calendar.price} บาท",
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 28),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),
                if (calendar.stock != "0")
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CartPage();
                        }));
                      },
                      child: Text("เพิ่มการสั่งซื้อ"),
                    ),
                  ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
