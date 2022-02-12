import 'package:flutter/material.dart';
import 'package:qrcode/web.dart';
import 'web_view_container.dart';
import 'package:qrcode/stands.dart';
import 'package:qrcode/ponencias.dart';
import 'package:qrcode/creditos.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            //Image(
            //image: NetworkImage(
            //"https://media.istockphoto.com/vectors/qr-code-scan-phone-icon-in-comic-style-scanner-in-smartphone-vector-vector-id1166145556")),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(image: AssetImage('images/logo.png')),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: flatButton("Visita nuestra web", WebPage()),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: standButton("Distribución de Stands"),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ponenciaButton("Lista de Ponencias"),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: wifiButton("Acceso al wifi del evento"),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: creditsButton("Créditos"),
            ),

            SizedBox(
              height: 20.0,
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
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                WebViewContainer("https://www.jtiesit.com/")));
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

  Widget standButton(String text) {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => StandsPage()));
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

  Widget ponenciaButton(String text) {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PonenciasPage()));
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

  Widget creditsButton(String text) {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => CreditsPage()));
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

  Widget wifiButton(String text) {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      onPressed: () async {
        launch('https://www.ull.es/apps/wifiguest/invitado/2821/JTIwifi');
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
