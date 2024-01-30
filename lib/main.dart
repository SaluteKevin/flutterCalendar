import 'package:calendar_app/providers/cartProvider.dart';
import 'package:calendar_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:postgres/postgres.dart';

void main() {
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      
      ChangeNotifierProvider(create: (context){
        return CartProvider();
      })
    ],
    
    child: const MaterialApp(
      home: SplashScreen(),
    )
    );
  }
}
