import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';

import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'scripts/savepdf.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List<String> _contacts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(image: AssetImage('images/logo.png')),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Lista de Contactos',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            FutureBuilder<List<String>>(
              future: getUserData(),
              builder: (_, snapshot) {
                if (!snapshot.hasData) {
                  // Return something to show the future hasn't completed yet
                  return CircularProgressIndicator();
                }

                if (snapshot.data.length == 0) {
                  return SizedBox(
                    height: 400,
                    child: Center(
                      child: Text(
                        'No hay contactos',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                }
                _contacts = snapshot.data;
                return new SizedBox(
                    height: 400,
                    child: ListView(
                        shrinkWrap: true,
                        children: generateList(snapshot.data)));
              },
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                padding: EdgeInsets.all(15.0),
                onPressed: () async {
                  if (_contacts.length == 0) {
                    _showToastText(context, "No hay contactos");
                  } else {
                    _generatePDF();
                  }
                },
                child: Text(
                  "Exportar Listado a PDF",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue, width: 3.0),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),

            //flatButton("Generate QR CODE", GeneratePage()),
          ],
        ),
      ),
    );
  }

  Future<void> _generatePDF() async {
    PdfDocument document = PdfDocument();
    final page = document.pages.add();

    await page.graphics.drawImage(PdfBitmap(await _readImageData('logo.png')),
        Rect.fromLTWH(0, 0, 500, 80));

    page.graphics.drawString(
        'Lista de Contactos', PdfStandardFont(PdfFontFamily.helvetica, 30),
        brush: PdfSolidBrush(PdfColor(99, 60, 174)),
        bounds: Rect.fromLTWH(135, 120, 0, 0));

    PdfGrid grid = PdfGrid();
    grid.style = PdfGridStyle(
        font: PdfStandardFont(PdfFontFamily.helvetica, 10),
        cellPadding: PdfPaddings(left: 5, right: 5, top: 5, bottom: 5));

    grid.columns.add(count: 4);
    grid.headers.add(1);

    PdfGridRow header = grid.headers[0];
    header.cells[0].value = 'Nombre';
    header.cells[1].value = 'Linkedin';
    header.cells[2].value = 'Github';
    header.cells[3].value = 'Web';

    for (int i = 0; i < _contacts.length; i++) {
      UserProfile profile = UserProfile(_contacts[i]);

      PdfGridRow row = grid.rows.add();
      row.cells[0].value = profile.name;
      row.cells[1].value = profile.linkedin;
      row.cells[2].value = profile.github;
      row.cells[3].value = profile.web;
    }

    if (_contacts.length > 0) {
      grid.draw(page: page, bounds: const Rect.fromLTWH(0, 200, 0, 0));
    }

    List<int> bytes = document.save();
    document.dispose();

    saveAndOpenFile(bytes, 'jti-contactos.pdf');
  }

  Widget flatButton(String text, Widget widget) {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blue, width: 3.0),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }

  void _showToastText(BuildContext context, String data) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(data),
      ),
    );
  }

  List<Widget> generateList(List<String> rawData) {
    List<Widget> list = new List<Widget>();

    for (var i = 0; i < rawData.length; i++) {
      UserProfile profile = UserProfile(rawData[i]);
      if (profile.getIsValid()) {
        list.add(new Card(
          color: Color(0xffFF645F),
          child: Column(children: <Widget>[
            Container(
              height: 220,
              width: 350,
              color: Color(0xffFF645F),
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                profile.name,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Center(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 50.0, right: 15.0),
                          child: FaIcon(FontAwesomeIcons.linkedin,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 185.0,
                          child: Text(
                            () {
                              if (profile.linkedin.length > 22) {
                                return profile.linkedin.substring(0, 22) +
                                    "...";
                              } else {
                                return profile.linkedin;
                              }
                            }(),
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 15.0),
                          child: IconButton(
                              icon: const Icon(Icons.copy, color: Colors.white),
                              onPressed: () {
                                Clipboard.setData(
                                    ClipboardData(text: profile.linkedin));
                                _showToastText(
                                    context, 'Copiado al portapapeles');
                              }),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 50.0, right: 15.0),
                          child: FaIcon(FontAwesomeIcons.github,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 185.0,
                          child: Text(
                            () {
                              if (profile.github.length > 22) {
                                return profile.github.substring(0, 22) + "...";
                              } else {
                                return profile.github;
                              }
                            }(),
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 15.0),
                          child: IconButton(
                              icon: const Icon(Icons.copy, color: Colors.white),
                              onPressed: () {
                                Clipboard.setData(
                                    ClipboardData(text: profile.github));
                                _showToastText(
                                    context, 'Copiado al portapapeles');
                              }),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 50.0, right: 15.0),
                          child: FaIcon(FontAwesomeIcons.link,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 185.0,
                          child: Text(
                            () {
                              if (profile.web.length > 22) {
                                return profile.web.substring(0, 22) + "...";
                              } else {
                                return profile.web;
                              }
                            }(),
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 15.0),
                          child: IconButton(
                              icon: const Icon(Icons.copy, color: Colors.white),
                              onPressed: () {
                                Clipboard.setData(
                                    ClipboardData(text: profile.web));
                                _showToastText(
                                    context, 'Copiado al portapapeles');
                              }),
                        ),
                      ],
                    ),
                  ),
                  /*Text(
                profile.linkedin.substring(0, 15) ?? "No disponible",
                style: TextStyle(fontSize: 20.0),
              ),*/
                ],
              ),
            )
          ]),
        ));
      }
    }
    return list;
  }
}

Future<List<String>> getUserData() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> userdata = prefs.getStringList("key");
  //return userdata[0] ?? "No se ha leído el QR";
  return userdata ?? [];
}

Widget getIcon(String data) {
  if (data.split("|||")[0] == "linkedin") {
    return FaIcon(FontAwesomeIcons.linkedin);
  } else if (data.split("|||")[0] == "github") {
    return FaIcon(FontAwesomeIcons.github);
  }
  return FaIcon(FontAwesomeIcons.link);
}

class UserProfile {
  String rawData;
  String name;
  String linkedin;
  String github;
  String web;
  bool isValid = true;

  UserProfile(this.rawData) {
    List<String> data = this.rawData.split("|||");
    //log(data.toString());
    name = data[0];

    this.linkedin = "No disponible";
    this.github = "No disponible";
    this.web = "No disponible";

    if (data.length > 1) {
      if (data[1] == "linkedin") {
        this.linkedin = data[2];
      }
      if (data[1] == "github") {
        this.github = data[2];
      }
      if (data[1] == "web") {
        this.web = data[2];
      }
    } else {
      this.isValid = false;
      this.linkedin = "No disponible";
      this.github = "No disponible";
      this.web = "No disponible";
    }

    if (data.length > 3) {
      if (data[3] == "github") {
        this.github = data[4];
      }
      if (data[3] == "web") {
        this.web = data[4];
      }
    }

    if (data.length > 5) {
      if (data[5] == "web") {
        this.web = data[6];
      }
    }
  }

  getIsValid() {
    return this.isValid;
  }
}

/*Future<Uint8List> _readImageData(String filename) async {
  final data = await rootBundle.load('/ìmages/$filename');
  return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
}*/
Future<Uint8List> _readImageData(String name) async {
  final data = await rootBundle.load('images/$name');
  return data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
}
