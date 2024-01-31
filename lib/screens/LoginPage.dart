import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login", style: TextStyle(color: Colors.white)),
        toolbarHeight: 48,
      ),
      body: Container(
        child: Center(child: const Text("~Maintenance~", style: TextStyle(fontSize: 48),)),
      ),
    );
  }
}