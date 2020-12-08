import 'package:flutter/material.dart';
import 'package:fluttermag/account.dart';
import 'package:fluttermag/profile.dart';
import 'package:fluttermag/sample.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
  );
  String title = "";
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = [
    AccountScreen(),
    ProfileScreen(),
    SampleScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (_selectedIndex == 0)
            ? Text("My Bottom navigator")
            : (_selectedIndex == 1)
                ? Text("Profile")
                : Text("Account"),
        leading: Icon(Icons.sort),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Account")
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
