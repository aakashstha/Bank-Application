import 'package:flutter/material.dart';
import 'package:bank_application/themeColors.dart';

import 'package:bank_application/Home/home.dart';
import 'package:bank_application/Home/atm.dart';
import 'package:bank_application/Home/news.dart';
import 'package:bank_application/More/more.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0; 
  final _pageOptions = [
    Home(),
    ATM(),
    News(),
    More(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: cornFlowerBlue,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home_rounded,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.local_atm_rounded),
            label: 'ATM',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_rounded),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
