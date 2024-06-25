String stateMedia(double media){
  if (media >= 3.5 && media < 7) {
    return "Prova final";
  } else if(media < 3.5){
    return "Reprovado";
  } else if(media >= 7){
    return "Aprovado";
  } else {
    return "Erro";
  }
}

String stateMediaFina (double media){
  if(media < 5){
    return "Reprovado";
  } else if(media >= 5){
    return "Aprovado";
  } else {
    return "Erro";
  }
}