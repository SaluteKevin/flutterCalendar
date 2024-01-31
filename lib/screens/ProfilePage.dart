import 'package:calendar_app/screens/LoginPage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    int status = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account", style: TextStyle(color: Colors.white)),
        toolbarHeight: 48,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "ยินดีต้อนรับ",
              style: TextStyle(fontSize: 32),
            ),
            const Text(
              "โปรดเข้าสู่ระบบเพื่อเริ่มใช้งาน",
              style: TextStyle(fontSize: 20),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                    child: Text(
                      "เข้าสู่ระบบ",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

}


