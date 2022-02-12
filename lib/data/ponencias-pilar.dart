import 'package:flutter/material.dart';

Widget tablePilarMartes() {
  return Table(border: TableBorder.all(color: Color(0xffFF645F)), children: [
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('11:00 - 11:35',
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
              child: Text('TITSA',
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
              child: Text('11:35 - 12:10',
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
              child: Text('Liferay',
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
              child: Text('12:10 - 12:45',
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
              child: Text('ESA',
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
              child: Text('14:30 - 15:05',
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
              child: Text('COITITF',
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
              child: Text('15:05 - 15:40',
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
              child: Text('Fred Olsen',
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
  ]);
}

/*
 * 
 * MIERCOLES
 * 
 */

Widget tablePilarMiercoles() {
  return Table(border: TableBorder.all(color: Color(0xffFF645F)), children: [
    TableRow(children: [
      TableCell(
          verticalAlignment: TableCellVerticalAlignment.fill,
          child: Container(
            color: Color(0xff83DEFF),
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('11:00 - 11:35',
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
              child: Text('ITER',
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
              child: Text('11:35 - 12:10',
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
              child: Text('Twitter',
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
              child: Text('12:10 - 12:45',
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
              child: Text('ITOP',
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
              child: Text('14:30 - 15:05',
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
              child: Text('IAC',
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
              child: Text('15:05 - 15:40',
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
              child: Text('Atlantis (Grupo Binter)',
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
  ]);
}
