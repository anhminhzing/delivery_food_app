import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class CustomNavbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<CustomNavbar> {
  int _currentIndex = 0;
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: 0,
      showElevation: true,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('Home'),
          activeColor: Colors.red,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.people),
          title: Text('Users'),
          activeColor: Colors.purpleAccent,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text(
            'Messages test for mes teset test test ',
          ),
          activeColor: Colors.pink,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
          activeColor: Colors.blue,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
