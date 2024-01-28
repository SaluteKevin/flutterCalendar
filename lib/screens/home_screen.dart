import 'package:calendar_app/models/CalendarInfo.dart';
import 'package:calendar_app/screens/CartPage.dart';
import 'package:calendar_app/screens/ViewPage.dart';
import 'package:flutter/material.dart';
import 'ImageSlider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Daily Table",
        home: const MainPage(),
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: AppBarTheme(color: Colors.blue[300]),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ));
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final imagesListPreview = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
  ];

  List<CalendarInfo> calendars = [
    CalendarInfo("ปฏิทินรูปสัตว์", "Desktop", 100, "assets/images/image1.jpg",
        "20"),
    CalendarInfo(
        "ปฏิทินตัวการ์ตูนสัตว์", "Hanging", 80, "assets/images/image2.jpg", "10"),
    CalendarInfo("ปฏิทินสวนสัตว์", "Pocket", 10, "assets/images/image3.jpg",
        "0"),
    CalendarInfo("ปฏิทินสัตว์ป่า", "Poster", 50, "assets/images/image4.jpg",
        "50"),
    CalendarInfo("ปฏิทินทำงาน", "Pocket", 10, "assets/images/image5.jpg",
        "0"),
    CalendarInfo("ปฏิทินภาพศิลป์", "Desktop", 100, "assets/images/image6.jpg",
        "20"),
    CalendarInfo("ปฏิทินแมวน้อย", "Desktop", 100,  "assets/images/image7.jpg",
        "10"),
    CalendarInfo("ปฏิทินแฟนตาซี", "Pocket", 10, "assets/images/image8.jpg",
        "30"),
    CalendarInfo("ปฏิทินอวกาศ", "Pocket", 10, "assets/images/image9.jpg",
        "40"),
    CalendarInfo("ปฏิทินนักบินอวกาศ", "Poster", 50, "assets/images/image10.jpg",
        "60"),
    CalendarInfo("ปฏิทินเฉลิมฉลอง", "Desktop", 100, "assets/images/image11.jpg",
        "15"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Table", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CartPage();
                }));
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          ImageSlider(imagesListPreview),
          SizedBox(
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(color: Colors.blue[300]),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(14, 0, 20, 0),
                child: Text(
                  'Calendar List',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: calendars.length,
              itemBuilder: (BuildContext context, int index) {
                CalendarInfo calendar = calendars[index];
                return ListTile(
                  leading: Image.asset(calendar.img),
                  title: Text(
                    "no.${index + 1} ${calendar.name}",
                    style: const TextStyle(fontSize: 20),
                  ),
                  subtitle: calendar.stock == "0"
                      ? const Text(
                          "สินค้าหมด",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.red,
                          ),
                        )
                      : Text(
                          "ราคา: ${calendar.price} บาท",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ViewPage();
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
