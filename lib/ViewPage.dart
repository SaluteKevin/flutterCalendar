import 'package:calendar_app/CalendarInfo.dart';
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
  CalendarInfo calendar = CalendarInfo("ปฏิทินเฉลิมฉลอง", "Desktop", "100",
      "assets/images/image11.jpg", "not available");

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
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                  child: SizedBox(
                    width: double.infinity,
                    child: calendar.status == "not available"
                        ? const Text(
                            "สินค้าหมด",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                            ),
                          )
                        : Text(
                            "${calendar.price} บาท",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.grey, fontSize: 24),
                          ),
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
