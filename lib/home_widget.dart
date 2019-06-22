import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';

import 'placeholder_widget.dart';

final _backgroundColor = Colors.pink[100];

class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
   PlaceholderWidget(Colors.white),
   PlaceholderWidget(Colors.deepOrange),
   PlaceholderWidget(Colors.green),
   PlaceholderWidget(Colors.green),
 ];
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('heal.'),
       backgroundColor: _backgroundColor,
     ),
     body: _children[_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped,
       currentIndex: _currentIndex,
       backgroundColor: Colors.black,
       items: [
        BottomNavigationBarItem(
          icon: new Icon(FontAwesomeIcons.home),
          title: new Text('Home'),
          backgroundColor: _backgroundColor,
        ),
        BottomNavigationBarItem(
          icon: new Icon(FontAwesomeIcons.tasks),
          title: new Text('Tracking'),
          backgroundColor: _backgroundColor,
        ),
        BottomNavigationBarItem(
          icon: new Icon(FontAwesomeIcons.bookOpen),
          title: Text('Journal'),
          backgroundColor: _backgroundColor,
        ),
        BottomNavigationBarItem(
          icon: new Icon(FontAwesomeIcons.portrait),
          title: Text('Profile'),
          backgroundColor: _backgroundColor,
        )
       ],
     ),
   );
 }

 void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}