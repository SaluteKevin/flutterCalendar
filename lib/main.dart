import 'package:flutter/material.dart';
import 'CalendarMenu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calendar App",
      home: MyHomePage(),
      theme: ThemeData(
          useMaterial3: true,
          primaryColor: Colors.pink,
          appBarTheme: AppBarTheme(color: Colors.pink[200]),
          highlightColor: Colors.pink.shade200,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.pink)),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CalendarMenu> menu=[
    CalendarMenu("ปฏิทินตั้งโต๊ะ", "100", "assets/images/image1.jpg"),
    CalendarMenu("ปฏิทินแขวน", "80", "assets/images/image2.jpg"),
    CalendarMenu("ปฏิทินพกพา", "10", "assets/images/image3.jpg"),
    CalendarMenu("ปฏิทินโปสเตอร์", "50", "assets/images/image4.jpg"),
  ];
  //แสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar Store"),
      ),
      body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            CalendarMenu calendar=menu[index];
            return ListTile(
              leading: Image.asset(calendar.img),
              title: Text("no.${index+1} " + calendar.name,style: TextStyle(fontSize: 20),),
              subtitle: Text("ราคา: " + calendar.price +" บาท",style: TextStyle(fontSize: 16, color: Colors.red,),),
              onTap: (){
                print("You have selected" + calendar.name);
              }
            );
          }),
    );
  }
}
