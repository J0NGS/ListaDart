double calculatorImc(double weigth, double heigth){
    if (heigth <= 0 ){
      throw Exception("Número da altura incorreto, número fornecido : $heigth");
    }
    if (weigth <= 0 ){
      throw Exception("Número do peso incorreto, número fornecido : $weigth");
    }

    double result = weigth/(heigth * heigth);
    return result;
}