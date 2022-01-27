import 'package:flutter/material.dart';
import 'package:qrcode/homePage.dart';
import 'package:qrcode/generate.dart';
import 'package:qrcode/contacts.dart';
import 'package:qrcode/scan.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentTab = 0;

  List<Widget> _pages = [
    HomePage(),
    GeneratePage(),
    ScanPage(),
    ContactsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JTI APP"),
        centerTitle: true,
      ),
      body: _pages[_currentTab],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentTab = index;
          });
        },
        type: BottomNavigationBarType.fixed, 
        backgroundColor: Colors.black, 
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentTab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: "Generar QR"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: "Leer QR"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: "Contactos"),
        ],
      ),
    );
  }
}
