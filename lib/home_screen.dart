import 'package:calendar_app/CalendarMenu.dart';
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
          primaryColor: Colors.pink,
          appBarTheme: AppBarTheme(color: Colors.blue[300]),
          highlightColor: Colors.pink.shade200,
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

  List<CalendarMenu> calendars = [
    CalendarMenu("ปฏิทินตั้งโต๊ะ", "100", "assets/images/image1.jpg"),
    CalendarMenu("ปฏิทินแขวน", "80", "assets/images/image2.jpg"),
    CalendarMenu("ปฏิทินพกพา", "10", "assets/images/image3.jpg"),
    CalendarMenu("ปฏิทินโปสเตอร์", "50", "assets/images/image4.jpg"),
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              const Text("Daily Table", style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            ImageSlider(imagesListPreview, activeIndex),
            SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(color: Colors.blue[300]),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                    CalendarMenu calendar = calendars[index];
                    return ListTile(
                        leading: Image.asset(calendar.img),
                        title: Text(
                          "no.${index + 1} ${calendar.name}",
                          style: const TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(
                          "ราคา: ${calendar.price} บาท",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.red,
                          ),
                        ),
                        onTap: () {
                          print("You have selected${calendar.name}");
                        },);
                  }),
            )
          ],
        ));
  }
}
