// ignore_for_file: file_names, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../ButtomPages/buttom_ButtomPharmacy.dart';
import '../ButtomPages/buttom_home.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final screens = [
    const HomeButtom(),
    const ButtomPharmacy(),
    const Center(
      child: Text(
        'Bag',
        style: TextStyle(fontSize: 60),
      ),
    ),
    const Center(
      child: Text(
        'Chat',
        style: TextStyle(fontSize: 60),
      ),
    ),
    const Center(
      child: Text(
        'Person',
        style: TextStyle(fontSize: 60),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height -
          AppBar().preferredSize.height -
          MediaQuery.of(context).padding.top,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 15,
          unselectedFontSize: 10,
          unselectedItemColor: const Color(0xF1F1F1F1),
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromRGBO(10, 171, 152, 1),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_pharmacy),
              label: 'Pharmacy',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
            ),
          ],
        ),
      ),
    );
  }
}
