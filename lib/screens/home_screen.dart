import 'package:calendar_app/screens/CartPage.dart';
import 'package:calendar_app/screens/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:calendar_app/components/ItemList.dart';
import 'package:calendar_app/components/ImageSlider.dart';

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
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.blue[300],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.portrait,
              color: Colors.white,
            ),
            icon: Icon(Icons.portrait),
            label: 'Account',
          ),
        ],
      ),
      body: <Widget>[
        Column(
          children: [
            AppBar(
              title: const Text("Daily Table",
                  style: TextStyle(color: Colors.white)),
              toolbarHeight: 48,
            ),
            ImageSlider(),
            SizedBox(
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(color: Colors.blue[300]),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(14, 0, 20, 4),
                  child: Text(
                    'สินค้า',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const ItemList(),
          ],
        ),
        const CartPage(),
        const ProfilePage()
      ][currentPageIndex],
    );
  }
}
