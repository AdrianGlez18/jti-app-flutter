import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:qrcode/scan.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
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
            Image(image: AssetImage('images/logo.png')),
            Text("Lista de Contactos"),
            FutureBuilder<List<String>>(
              future: getUserData(),
              builder: (_, snapshot) {
                if (!snapshot.hasData) {
                  // Return something to show the future hasn't completed yet
                  return CircularProgressIndicator();
                }

                return new SizedBox(
                    height: 400,
                    child: ListView(
                        shrinkWrap: true,
                        children: generateList(snapshot.data)));
                // embeddedImage: AssetImage('assets/logo.png'),
              },
            ),
            //flatButton("Generate QR CODE", GeneratePage()),
          ],
        ),
      ),
    );
  }

/*class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileList(),
    );
  }*/

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
}

Future<List<String>> getUserData() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> userdata = prefs.getStringList("key");
  //return userdata[0] ?? "No se ha leído el QR";
  return userdata ?? ["No se ha leído el QR"];
}

/*List<Widget> generateList(List<String> rawData) {
  List<Widget> list = new List<Widget>();
  for (var i = 0; i < rawData.length; i++) {
    list.add(new FittedBox(
        fit: BoxFit.fitWidth,
        child: Row(
          children: <Widget>[
            new IconButton(
                icon: getIcon(rawData[i]),
                onPressed: () {
                  /*Clipboard.setData(
                      ClipboardData(text: rawData[i].split("|||")[1]));*/
                  print("Enlace copiado al portapapeles");
                }),
            new FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                rawData[i].split("|||")[
                    1], //Usa únicamente el texto de enlace sin el id de tipo
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        )));
  }
  return list;
}*/

List<Widget> generateList(List<String> rawData) {
  List<Widget> list = new List<Widget>();

  for (var i = 0; i < rawData.length; i++) {
    UserProfile profile = UserProfile(rawData[i]);
    //log(rawData[i]);
    //log(UserProfile(rawData[i]).linkedin);
    list.add(new Card(
      child: Column(children: <Widget>[
        Container(
          height: 150,
          width: 350,
          color: Color(0xFF645F),
          child: Column(
            children: <Widget>[
              Text(
                profile.name,
                style: TextStyle(fontSize: 20.0),
              ),
              /*Text(
                profile.linkedin.substring(0, 15) ?? "No disponible",
                style: TextStyle(fontSize: 20.0),
              ),*/
              Text(
                () {
                  if (profile.linkedin.length > 25) {
                    return profile.linkedin.substring(0, 25) + "...";
                  } else {
                    return profile.linkedin;
                  }
                }(),
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                () {
                  if (profile.github.length > 25) {
                    return profile.github.substring(0, 25) + "...";
                  } else {
                    return profile.github;
                  }
                }(),
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                () {
                  if (profile.web.length > 25) {
                    return profile.web.substring(0, 25) + "...";
                  } else {
                    return profile.web;
                  }
                }(),
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        )
      ]),
    ));
  }
  return list;
}

Widget getIcon(String data) {
  if (data.split("|||")[0] == "linkedin") {
    return FaIcon(FontAwesomeIcons.linkedin);
  } else if (data.split("|||")[0] == "github") {
    return FaIcon(FontAwesomeIcons.github);
  }
  return FaIcon(FontAwesomeIcons.link);
}

/*

list.add(new Row(
      children: <Widget>[
        new IconButton(
            icon: getIcon(rawData[i]),
            onPressed: () {
              Clipboard.setData(
                  ClipboardData(text: rawData[i].split("|||")[1]));
              print("Enlace copiado al portapapeles");
            }),
        new FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            rawData[i].split(
                "|||")[1], //Usa únicamente el texto de enlace sin el id de tipo
            style: TextStyle(fontSize: 20.0),
          ),
        )
      ],
    ));

    */

class UserProfile {
  String rawData;
  String name;
  String linkedin;
  String github;
  String web;

  UserProfile(this.rawData) {
    //log(this.rawData);
    List<String> data = this.rawData.split("|||");
    log(data.toString());
    name = data[0];

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
}

class ProfileCard extends StatelessWidget {
  final UserProfile profile;
  ProfileCard(this.profile);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
        Container(
          height: 150,
          width: 350,
          color: Color(0xFF645F),
          child: Column(
            children: <Widget>[
              Text(
                profile.name,
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                profile.linkedin.substring(0, 15),
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                profile.github.substring(0, 15),
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                profile.web.substring(0, 15),
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class ProfileList extends StatefulWidget {
  @override
  _ProfileListState createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {
  Future<List<String>> userData = getUserData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return FutureBuilder<List<String>>(
          future: userData,
          builder: (_, snapshot) {
            if (!snapshot.hasData) {
              // Return something to show the future hasn't completed yet
              return CircularProgressIndicator();
            }

            return new ProfileCard(new UserProfile(snapshot.data[index]));
            // embeddedImage: AssetImage('assets/logo.png'),
          },
        );
      },
    );
  }
}
