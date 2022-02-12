import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/src/rendering/box.dart';

class GeneratePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GeneratePageState();
}

class GeneratePageState extends State<GeneratePage> {
  String qrData = "QR de ejemplo|||linkedin|||Linkedin de Ejemplo";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: QrImage(
                  data: qrData,
                  size: 200.0,
                ),
              ),
              /*SizedBox(
              height: 20.0,
            ),*/
              SizedBox(
                height: 420,
                child: ListView(shrinkWrap: true, children: [
                  Text(
                    "Genera el QR a tu perfil",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    "Nombre y primer apellido (obligatorio)",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  TextField(
                    controller: qrdataFeedName,
                    decoration: InputDecoration(
                      hintText: "Adrián González",
                    ),
                  ),
                  Text(
                    "Linkedin (opcional)",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  TextField(
                    controller: qrdataFeedLinkedin,
                    decoration: InputDecoration(
                      hintText: "https://www.linkedin.com/...",
                    ),
                  ),
                  Text(
                    "Github (opcional)",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  TextField(
                    controller: qrdataFeedGithub,
                    decoration: InputDecoration(
                      hintText: "https://www.github.com/...",
                    ),
                  ),
                  Text(
                    "Portfolio web (opcional)",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  TextField(
                    controller: qrdataFeedWeb,
                    decoration: InputDecoration(
                      hintText: "https://www.nombredemiweb.dev/...",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                    child: FlatButton(
                      padding: EdgeInsets.all(15.0),
                      onPressed: () async {
                        if (qrdataFeedName.text.isEmpty) {
                          //a little validation for the textfield
                          setState(() {
                            qrData = "";
                          });
                        } else {
                          setState(() {
                            qrData = qrdataFeedName.text +
                                (qrdataFeedLinkedin.text.isEmpty
                                    ? ""
                                    : "|||linkedin|||" +
                                        qrdataFeedLinkedin.text) +
                                (qrdataFeedGithub.text.isEmpty
                                    ? ""
                                    : "|||github|||" + qrdataFeedGithub.text) +
                                (qrdataFeedWeb.text.isEmpty
                                    ? ""
                                    : "|||web|||" + qrdataFeedWeb.text);
                          });
                        }
                      },
                      child: Text(
                        "Generar código QR",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blue, width: 3.0),
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  final qrdataFeedName = TextEditingController();
  final qrdataFeedLinkedin = TextEditingController();
  final qrdataFeedGithub = TextEditingController();
  final qrdataFeedWeb = TextEditingController();
}
