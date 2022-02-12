import 'package:flutter/cupertino.dart';
import 'package:qrcode/data/ponencias-shirley.dart';
import '/data/ponencias-margaret.dart';
import '/data/ponencias-pilar.dart';
import '/data/ponencias-frances.dart';

Widget getTable(String tabla) {
  /*
  * Se usa esta funciónm para mantener ordenado el código de la UI
  *
  * Parametro 1: Booleano
  * -> True para el martes
  * -> False para el miercoles
  * Parámnetro 2: Numero
  * -> 0 para Shirley
  * -> 1 para Margaret
  * -> 2 para Pilar
  * -> 3 para Frances
  */

  switch (tabla) {
    case 'true0':
      return tableShirleyMartes();
    case 'true1':
      return tableMargaretMartes();
    case 'true2':
      return tablePilarMartes();
    case 'true3':
      return tableFrancesMartes();
    case 'false0':
      return tableShirleyMiercoles();
    case 'false1':
      return tableMargaretMiercoles();
    case 'false2':
      return tablePilarMiercoles();
    case 'false3':
      return tableFrancesMiercoles();
    default:
      return tableShirleyMartes();
  }
}
