import 'dart:math';

double delta(double a, double b, double c){
  double result = ((b*b) - ((4*a)*c));
  return result;
}

void result(double b, double a, double delta){
  double x1 = ((-b + sqrt(delta))/(2*a));
  double x2 = ((-b - sqrt(delta))/(2*a));

  print("-------------------");
  print("x1-> $x1");
  print("x2-> $x2");
  print("-------------------");
}