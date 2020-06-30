import 'package:flutter/material.dart';
import 'package:myproject/screens/home/homebody.dart';
import 'package:myproject/screens/home/myqueue.dart';
import 'package:myproject/screens/home/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //variable
  int _currentIndex = 0;

  //switch screens
  changeScreen(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomeBody();
        break;
      case 1:
        return MyQueue();
        break;
      case 2:
        return Profile();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          setState(() {});
        },
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.queue),
            title: Text('My Queue'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
        ],
        iconSize: 28,
        selectedItemColor: Color(0xfff27360),
        unselectedItemColor: Color(0xff36374c),
      ),
      backgroundColor: Colors.white,
      body: changeScreen(_currentIndex),
    );
  }
}
