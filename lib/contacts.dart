import 'package:flutter/material.dart';
import 'package:qrcode/scan.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                List<Widget> list = new List<Widget>();
                for (var i = 0; i < snapshot.data.length; i++) {
                  list.add(new Text(snapshot.data[i]));
                }

                return new Column(children: list);
                // embeddedImage: AssetImage('assets/logo.png'),
              },
            ),
            //flatButton("Generate QR CODE", GeneratePage()),
          ],
        ),
      ),
    );
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
}

Future<List<String>> getUserData() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  List<String> userdata = prefs.getStringList("key");
  //return userdata[0] ?? "No se ha leído el QR";
  return userdata ?? ["No se ha leído el QR"];
}
