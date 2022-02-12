import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String qrCodeResult = "Aún no se ha escaneado nada";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Último perfil escaneado:",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              qrCodeResult.split("|||")[0],
              style: TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(15.0),
              onPressed: () async {
                ScanResult codeSanner =
                    await BarcodeScanner.scan(); //barcode scnner
                setState(() {
                  qrCodeResult =
                      codeSanner.rawContent ?? "No se ha leído el QR";
                });

                if (qrCodeResult != "No se ha leído el QR" &&
                    qrCodeResult !=
                        "QR de ejemplo|||linkedin|||Linkedin de Ejemplo" &&
                    qrCodeResult != "") {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("Se ha obtenido el siguiente perfil"),
                            content: Text(qrCodeResult.split("|||")[0]),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("Guardar"),
                                onPressed: () {
                                  storeUserData(qrCodeResult);
                                  Navigator.pop(context);
                                },
                              ),
                              FlatButton(
                                child: Text("Descartar"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                            elevation: 20,
                          ));
                } else if (qrCodeResult ==
                        "QR de ejemplo|||linkedin|||Linkedin de Ejemplo" ||
                    qrCodeResult != "") {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("Este es el ejemplo de QR"),
                            content: Text(
                                "El QR leído es el por defecto. El usuario no ha generado correctamente su QR."),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("Descartar"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              )
                            ],
                            elevation: 20,
                          ));
                }

                // try{
                //   BarcodeScanner.scan()    this method is used to scan the QR code
                // }catch (e){
                //   BarcodeScanner.CameraAccessDenied;   we can print that user has denied for the permisions
                //   BarcodeScanner.UserCanceled;   we can print on the page that user has cancelled
                // }
              },
              child: Text(
                "Leer QR",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blue, width: 3.0),
                  borderRadius: BorderRadius.circular(20.0)),
            )
          ],
        ),
      ),
    );
  }

  //its quite simple as that you can use try and catch staatements too for platform exception
}

/*void storeUserData(String infotype, String profile) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  List<String> userdata;

  Future<bool> _saveList() async {
    return await prefs.setStringList("key", userdata);
  }

  List<String> _getList() {
    return prefs.getStringList("key");
  }

  userdata = _getList() ?? [];

  String toStore = infotype + "|||" + profile;

  userdata.add(toStore);

  _saveList();
}*/

void storeUserData(String profile) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  List<String> userdata;

  Future<bool> _saveList() async {
    return await prefs.setStringList("key", userdata);
  }

  List<String> _getList() {
    return prefs.getStringList("key");
  }

  userdata = _getList() ?? [];

  userdata.add(profile);

  _saveList();
}
