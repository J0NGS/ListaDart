import 'dart:ffi';
import 'dart:io';

import 'areaCalculator.dart';

void main() {
  print("Qual o raio do círculo?");
  String? radius = stdin.readLineSync();
  if (radius != null) {
  double radiusDouble = double.parse(radius);
  double area = circleArea(radiusDouble);
  String areaString = area.toStringAsFixed(2);
  print("A área do círculo é: $areaString");
  }
}