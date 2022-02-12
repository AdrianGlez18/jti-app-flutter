import 'package:flutter/material.dart';
import 'package:qrcode/homePage.dart';
import 'package:qrcode/generate.dart';
import 'package:qrcode/contacts.dart';
import 'package:qrcode/scan.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'mainPage.dart';
import 'package:url_launcher/url_launcher.dart';

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

  bool consent = false;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => checkUserConsent());
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

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: Text(
                  "Antes de poder usar la app, debes aceptar nuestra política de privacidad"),
              content: new InkWell(
                  child: new Text(
                    "Ver la política de privacidad",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () =>
                      launch('https://jtiesit.com/politica-de-privacidad/')),
              actions: <Widget>[
                FlatButton(
                  child: Text("Aceptar"),
                  onPressed: () {
                    setUserConsent();

                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text("Cerrar la app"),
                  onPressed: () {
                    exit(0);
                  },
                )
              ],
              elevation: 20,
            ));
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

    if (!consent) {
      showAlert(context);
    }

    return consent;

    //userdata.add(profile);

    // _saveList();
  }

  Future<bool> setUserConsent() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    Future<bool> _saveConsent() async {
      return await prefs.setBool("consent", true);
    }

    _saveConsent();
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

/*

showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text(
                                "Antes de poder usar la app, debes aceptar nuestra política de privacidad"),
                            content: Text("Ver la política de privacidad"),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("Aceptar"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              FlatButton(
                                child: Text("Cerrar la app"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                            elevation: 20,
                          ));

                          */

class ConsentSystem extends StatelessWidget {
  // Wrapper Widget
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showAlert(context));
    return Container(
      child:
          Text("Necesitas aceptar la política de privacidad para usar la app"),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: Text(
                  "Antes de poder usar la app, debes aceptar nuestra política de privacidad"),
              content: Text("Ver la política de privacidad"),
              actions: <Widget>[
                FlatButton(
                  child: Text("Aceptar"),
                  onPressed: () {
                    MyApplication();
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text("Cerrar la app"),
                  onPressed: () {
                    exit(0);
                  },
                )
              ],
              elevation: 20,
            ));
  }
}

/*

FutureBuilder<bool>(
            future: checkUserConsent(), //returns bool
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return new Text('${snapshot.error}');
                } else {
                  //
                  if (snapshot.data == true) {
                    consent = true;
                  }
                  return new CircularProgressIndicator();
                }
              } else {
                return new CircularProgressIndicator();
              }
            })

*/