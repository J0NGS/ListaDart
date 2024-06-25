import 'dart:io';

import 'Utils.dart';

void main() {
  print("Qual o valor de a ?");
  String? a = stdin.readLineSync();
  print("Qual o valor de b ?");
  String? b = stdin.readLineSync();
  print("Qual o valor de c ?");
  String? c = stdin.readLineSync();

  if( a != null && b != null && c != null){
    double deltaValue = delta(double.parse(double.parse(a).toStringAsFixed(2)), double.parse(double.parse(b).toStringAsFixed(2)), double.parse(double.parse(c).toStringAsFixed(2)));
    result(double.parse(double.parse(a).toStringAsFixed(2)), double.parse(double.parse(b).toStringAsFixed(2)), deltaValue);
  } else {
    throw Exception("Valor nulo fornecido");
  }
}