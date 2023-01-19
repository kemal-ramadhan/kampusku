import 'package:crud_mysql/pages/grup.dart';
import 'package:crud_mysql/pages/profile.dart';
import 'package:flutter/material.dart';
import 'berita.dart';
import 'dashboard.dart';

class Menus extends StatelessWidget {
  const Menus({super.key});

  static const String _title = 'Portal Berita STT Bandung';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    Berita(),
    Grup(),
    Profile(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 34, 45, 51)),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper, color: Color.fromARGB(255, 34, 45, 51)),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_outlined, color: Color.fromARGB(255, 34, 45, 51)),
            label: 'Grup',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, color: Color.fromARGB(255, 34, 45, 51)),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 34, 45, 51),
        onTap: _onItemTapped,
      ),
    );
  }
}
