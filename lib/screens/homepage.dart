import 'package:flutter/material.dart';
import 'package:laxo/screens/ProfileScreen.dart';
import 'package:laxo/screens/variables.dart';
import 'package:laxo/screens/videoConferenceScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;
  List pageOptions = [
    VideoConferenceScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: mystyle(17, Colors.blue),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: mystyle(17, Colors.black),
        currentIndex: page,
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              label: 'Video Call',
              icon: Icon(
                Icons.video_call,
                size: 32,
              )),
          BottomNavigationBarItem(
              // ignore: deprecated_member_use
              label: 'Profile Page',
              icon: Icon(
                Icons.person,
                size: 32,
              ))
        ],
      ),
      body: pageOptions[page],
    );
  }
}
