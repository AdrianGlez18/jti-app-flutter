import 'package:flutter/material.dart';
import 'package:qrcode/homePage.dart';
import 'package:qrcode/generate.dart';
import 'package:qrcode/contacts.dart';
import 'package:qrcode/scan.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}*/

class MyApplication extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApplication> {
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
        backgroundColor: Color(0xff633CAE),
      ),
      body: _pages[_currentTab],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentTab = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff633CAE),
        selectedItemColor: Color(0xff83DEFF),
        unselectedItemColor: Colors.white,
        currentIndex: _currentTab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.qrcode), label: "Generar QR"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.cameraRetro), label: "Leer QR"),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: "Contactos"),
        ],
      ),
    );
  }
}

Future<bool> checkUserConsent() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  /*Future<bool> _saveConsent() async {
    return await prefs.setBool("consent", consent);
  }*/

  bool _getConsent() {
    return prefs.getBool("consent");
  }

  bool consent = _getConsent() ?? false;

  return consent;

  //userdata.add(profile);

  // _saveList();
}
