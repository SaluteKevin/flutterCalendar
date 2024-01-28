import 'package:calendar_app/screens/ListBox.dart';
import 'package:calendar_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'models/CalendarInfo.dart';
import 'screens/ListBox.dart';

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