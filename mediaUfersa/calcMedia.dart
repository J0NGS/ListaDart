double calcMedia(double n1, double n2, double n3){
  double total = n1 + n2 + n3;

  double media = total/3;
  media = double.parse(media.toStringAsFixed(2));

  return media;
}

double calcMediaFinal(double media, double notaFinal){
  double mediaFinal = ((media * 6) + (notaFinal * 4))/10;

  mediaFinal = double.parse(mediaFinal.toStringAsFixed(2));
  return mediaFinal;
}