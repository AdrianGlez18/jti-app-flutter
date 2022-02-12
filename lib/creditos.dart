import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditsPage extends StatefulWidget {
  @override
  _CreditsPageState createState() => _CreditsPageState();
}

class _CreditsPageState extends State<CreditsPage> {
  bool Day = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff633CAE),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(image: AssetImage('images/logo.png')),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                  "El evento ha sido posible gracias a nuestros patrocinadores:",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff633CAE)),
                  textAlign: TextAlign.center),
            ),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: ListView(
                      children: Logos(),
                    ))),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: ListView(
                      children: About(),
                    ))),
          ],
        ),
      ),
    );
  }

  List<Widget> Logos() {
    return [
      Image(image: AssetImage('images/ull.png')),
      Image(image: AssetImage('images/cabildotenerife.png')),
      Image(image: AssetImage('images/fifede.png')),
      Image(image: AssetImage('images/recintoferial.png')),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Image(image: AssetImage('images/agile.png')),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Image(image: AssetImage('images/acidtango.png')),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Image(image: AssetImage('images/open.png')),
      ),
      Padding(
        padding: EdgeInsets.all(20.0),
        child: Image(image: AssetImage('images/fonteide.png')),
      ),
    ];
  }

  List<Widget> About() {
    return (<Widget>[
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          "Desde las JTI estamos comprometidos con el código libre. Todo el código fuente está disponible en GitHub.",
          style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff633CAE)),
          textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: InkWell(
            child: new Text(
              "Ver código fuente",
              style: TextStyle(color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            onTap: () =>
                launch('https://github.com/AdrianGlez18/jti-app-flutter')),
      ),
      Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          "App desarrollada por AdrianGlez18 para las JTI",
          style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff633CAE)),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}
