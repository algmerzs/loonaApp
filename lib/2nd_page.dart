import 'package:flutter/material.dart';
import 'package:loonaApp/pages/NavBaja/lore.dart';
import 'package:loonaApp/pages/NavBaja/miembros.dart';
import 'package:loonaApp/pages/NavBaja/salir.dart';

class SecPage extends StatefulWidget {
  @override
  _SecPageState createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Lore(),
    Miembros(),
    Salir(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(62, 28, 85, 1),
        title: Text('Loonaverse'),
        centerTitle: true,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        fixedColor: Color.fromRGBO(62, 28, 85, 1),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Lore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Miembros',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Salir',
          ),
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
