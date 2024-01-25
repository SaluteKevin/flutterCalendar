import 'package:flutter/material.dart';

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
  int number = 0; //การสร้าง state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HelloWorld?!"),
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("ListViewBuilderNo $index"),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addNumber();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  void addNumber() {
    setState(() {
      number++;
    });
  }

  List<Widget> getData(int count) {
    List<Widget> data = [];
    data.add(Text("Welcome to calendar store"));
    data.add(Text("This is button"));
    data.add(
      Text("$number", style: TextStyle(fontSize: 24)),
    );
    for (var i = 0; i < count; i++) {
      var menu = ListTile(
        title: Text(
          "List no. ${i + 1}",
          style: TextStyle(fontSize: 24),
        ),
        subtitle: Text(
          "sub-List no. ${i % 3}",
          style: TextStyle(fontSize: 12),
        ),
      );
      data.add(menu);
    }
    return data;
  }
}
