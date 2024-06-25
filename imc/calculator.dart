import 'dart:io';

import 'calcImc.dart';

void main(){
  print("Qual a sua altura ?");
  String? heigth = stdin.readLineSync();
  print("Qual o seu peso ?");
  String? weigth = stdin.readLineSync();

  if(heigth != null && weigth != null){
    heigth = heigth.replaceAll(',', '.');
    weigth = weigth.replaceAll(',', '.');

    double heigthInt = double.parse(heigth);
    double weigthInt = double.parse(weigth);
    var imc = calculatorImc(weigthInt, heigthInt);
    String imcString =  imc.toStringAsFixed(2);
    print("seu imc é: $imcString" );
  } else {
    throw Exception("Valor inválido");
  }
}