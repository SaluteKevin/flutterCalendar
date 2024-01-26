import 'package:calendar_app/ListBox.dart';
import 'package:calendar_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'CalendarMenu.dart';
import 'ListBox.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}