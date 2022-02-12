import 'package:flutter/material.dart';

Widget tableSalonMartes() {
  return Table(border: TableBorder.all(color: Color(0xffFF645F)), children: [
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('9:30 - 10:15',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xff633CAE),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Ceremonia de apertura',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('10:15 - 11:00',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xff633CAE),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Tiempo para visitar stands en el pasillo principal',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('11:00 - 12:45',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xff633CAE),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Ponencias en las Salas o visita stands',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('12:45 - 13:00',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xffFF645F),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Trivial',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('13:00 - 14:30',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xffFF645F),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Almuerzo',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('14:30 - 15:40',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xff633CAE),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Ponencias o vista stands',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('15:40 - 16:15',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xffFF645F),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Descanso y Sorteo Final',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('16:15',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xff633CAE),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'Mesa Redonda: Estrés… ¿a qué se debe y como gestionarlo?',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
  ]);
}

/*
 * 
 * MIERCOLES
 * 
 */

Widget tableSalonMiercoles() {
  return Table(border: TableBorder.all(color: Color(0xffFF645F)), children: [
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('10:15 - 11:00',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xff633CAE),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Tiempo para visitar stands en el pasillo principal',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('11:00 - 12:45',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xff633CAE),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Ponencias en las Salas o visita stands',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('12:45 - 13:00',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xffFF645F),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Trivial',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('13:00 - 14:30',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xffFF645F),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Almuerzo',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('14:30 - 15:40',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xff633CAE),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Ponencias o vista stands',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('15:40 - 16:15',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xffFF645F),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Descanso y Sorteo Final',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('16:15',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xff633CAE),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'Mesa Redonda: Nuevas Tecnologías y la Automatización del Trabajo',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('18:00',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.center),
            ),
          )),
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Container(
            color: Color(0xff633CAE),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Ceremonia de clausura',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center),
            ),
          )),
    ]),
  ]);
}
