import 'package:flutter/material.dart';
import 'package:qrcode/web.dart';
import 'web_view_container.dart';
import 'data/ponencias.dart';

class PonenciasPage extends StatefulWidget {
  @override
  _PonenciasPageState createState() => _PonenciasPageState();
}

class _PonenciasPageState extends State<PonenciasPage> {
  bool Day = true;
  int room = 0;
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
              child: Text("Lista de Ponencias",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff633CAE)),
                  textAlign: TextAlign.center),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: getRoomName(),
                )),
            Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: Day ? Martes() : Miercoles(),
                )),
            Padding(
                padding: EdgeInsets.all(15.0),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.53,
                    child: ListView(
                      children: [getTable(Day.toString() + room.toString())],
                    ))),
          ],
        ),
      ),
    );
  }

  // Room Controller to simplify the conditional statement
  List<Widget> getRoomName() {
    if (room == 0) {
      return getShirley();
    }

    if (room == 1) {
      return getMargaret();
    }

    if (room == 2) {
      return getPilar();
    }

    if (room == 3) {
      return getFrances();
    }
  }

  List<Widget> getShirley() {
    return [
      IconButton(
        icon: const Icon(Icons.arrow_circle_left),
        tooltip: 'Mostrar sala anterior',
        color: Color(0xffFF645F),
        onPressed: () {
          setState(() {
            room = 3;
          });
        },
      ),
      SizedBox(
        width: 200,
        child: Text("Sala Stephanie Shirley",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffFF645F)),
            textAlign: TextAlign.center),
      ),
      IconButton(
        icon: const Icon(Icons.arrow_circle_right),
        tooltip: 'Mostrar sala siguiente',
        color: Color(0xffFF645F),
        onPressed: () {
          setState(() {
            room = 1;
          });
        },
      )
    ];
  }

  List<Widget> getMargaret() {
    return [
      IconButton(
        icon: const Icon(Icons.arrow_circle_left),
        tooltip: 'Mostrar sala anterior',
        color: Color(0xffFF645F),
        onPressed: () {
          setState(() {
            room = 0;
          });
        },
      ),
      SizedBox(
        width: 200,
        child: Text("Sala Margaret Heafield Hamilton",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffFF645F)),
            textAlign: TextAlign.center),
      ),
      IconButton(
        icon: const Icon(Icons.arrow_circle_right),
        tooltip: 'Mostrar sala siguiente',
        color: Color(0xffFF645F),
        onPressed: () {
          setState(() {
            room = 2;
          });
        },
      )
    ];
  }

  List<Widget> getPilar() {
    return [
      IconButton(
        icon: const Icon(Icons.arrow_circle_left),
        tooltip: 'Mostrar sala anterior',
        color: Color(0xffFF645F),
        onPressed: () {
          setState(() {
            room = 1;
          });
        },
      ),
      SizedBox(
        width: 200,
        child: Text("Sala Pilar Careaga Basabe",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffFF645F)),
            textAlign: TextAlign.center),
      ),
      IconButton(
        icon: const Icon(Icons.arrow_circle_right),
        tooltip: 'Mostrar sala siguiente',
        color: Color(0xffFF645F),
        onPressed: () {
          setState(() {
            room = 3;
          });
        },
      )
    ];
  }

  List<Widget> getFrances() {
    return [
      IconButton(
        icon: const Icon(Icons.arrow_circle_left),
        tooltip: 'Mostrar sala anterior',
        color: Color(0xffFF645F),
        onPressed: () {
          setState(() {
            room = 2;
          });
        },
      ),
      SizedBox(
        width: 200,
        child: Text("Sala Frances Elizabeth Allen",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffFF645F)),
            textAlign: TextAlign.center),
      ),
      IconButton(
        icon: const Icon(Icons.arrow_circle_right),
        tooltip: 'Mostrar sala siguiente',
        color: Color(0xffFF645F),
        onPressed: () {
          setState(() {
            room = 0;
          });
        },
      )
    ];
  }

  List<Widget> Martes() {
    return [
      SizedBox(
        width: 50,
        child: Text(" ",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffFF645F)),
            textAlign: TextAlign.center),
      ),
      SizedBox(
        width: 150,
        child: Text("Martes 15",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffFF645F)),
            textAlign: TextAlign.center),
      ),
      SizedBox(
          width: 50,
          child: IconButton(
            icon: const Icon(Icons.arrow_circle_right),
            tooltip: 'Mostrar día siguiente',
            color: Color(0xffFF645F),
            onPressed: () {
              setState(() {
                Day = !Day;
              });
            },
          )),
    ];
  }

  List<Widget> Miercoles() {
    return [
      SizedBox(
        width: 50,
        child: IconButton(
          icon: const Icon(Icons.arrow_circle_left),
          tooltip: 'Mostrar día anterior',
          color: Color(0xffFF645F),
          onPressed: () {
            setState(() {
              Day = !Day;
            });
          },
        ),
      ),
      SizedBox(
        width: 150,
        child: Text("Miércoles 16",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffFF645F)),
            textAlign: TextAlign.center),
      ),
      SizedBox(
        width: 50,
        child: Text(" ",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffFF645F)),
            textAlign: TextAlign.center),
      ),
    ];
  }
}

Widget TableMiercoles() {
  return Table(border: TableBorder.all(color: Color(0xffFF645F)), children: [
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('S01',
              style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('OpenCanarias',
              style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center),
        ),
      ),
    ]),
    TableRow(children: [
      //Column(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('S02',
              style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center),
        ),
      ),
      //]),
      //Column(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('LeanMind',
              style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center),
        ),
      ),
      //]),
    ]),
    TableRow(children: [
      //Column(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('S03',
              style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center),
        ),
      ),
      //]),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('The Agile Monkeys',
              style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('S04',
              style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Minsait (Indra)',
              style: TextStyle(fontSize: 20.0), textAlign: TextAlign.center),
        ),
      )
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S05',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Text(
          'IAC',
          style: TextStyle(fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S06',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Gorona del Viento',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S07',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Dynamics ULL',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S08',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'COITITF',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S09',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'ITOP',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S10',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'ADALOVDEV',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S11',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Secuora',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S12',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Expero',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S13',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'TITSA',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S14',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'ITC',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S15',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Grupo Arquimea',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S16',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'ITER',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S17',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Arcana Islands',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S18',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'OneCyber + Atlantis',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S19',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'TeideSat',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S20',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Cátedra Cajasiete Empresa',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S21',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Cátedra CEOE',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S22',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Cátedra Cajasiete Blockchain',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S23',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Cátedra Binter Ciberseguridad',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'S24',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Cátedra Edosoft',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'SC1',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Stand de Información 1',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
    TableRow(children: [
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'SC2',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Stand de Información 2',
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]),
  ]);
}
