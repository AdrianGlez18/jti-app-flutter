import 'package:flutter/cupertino.dart';
import 'package:qrcode/data/ponencias-shirley.dart';
import '/data/ponencias-margaret.dart';
import '/data/ponencias-pilar.dart';
import '/data/ponencias-frances.dart';
import '/data/ponencias-salon.dart';

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
      return tableSalonMartes();
    case 'true1':
      return tableShirleyMartes();
    case 'true2':
      return tableMargaretMartes();
    case 'true3':
      return tablePilarMartes();
    case 'true4':
      return tableFrancesMartes();
    case 'false0':
      return tableSalonMiercoles();
    case 'false1':
      return tableShirleyMiercoles();
    case 'false2':
      return tableMargaretMiercoles();
    case 'false3':
      return tablePilarMiercoles();
    case 'false4':
      return tableFrancesMiercoles();
    default:
      return tableShirleyMartes();
  }
}
