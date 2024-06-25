import 'dart:io';

import 'calcMedia.dart';
import 'stateMedia.dart';

void main() {
  double n1;
  double n2;
  double n3;
  double parcialMedia;
  double finalNote;
  double finalMedia;
  String state;

  print("Qual a sua nota da primeira unidade?");
  String? n1String = stdin.readLineSync();
  print("Qual a sua nota da segunda unidade?");
  String? n2String = stdin.readLineSync();
  print("Qual a sua nota da terceira unidade?");
  String? n3String = stdin.readLineSync();

  if (n1String != null && n2String != null && n3String != null) {
    n1String.replaceAll(',', '.');
    n2String.replaceAll(',', '.');
    n3String.replaceAll(',', '.');
    n1 = double.parse(n1String);
    n1 = double.parse(n1.toStringAsFixed(2));
    
    n2 = double.parse(n2String);
    n2 = double.parse(n2.toStringAsFixed(2));

    n3 = double.parse(n3String);
    n3 = double.parse(n3.toStringAsFixed(2));

    parcialMedia = calcMedia(n1, n2, n3);
    state = stateMedia(parcialMedia);
    print("---Sua situação---");
    print("N1-> $n1 | N2-> $n2 | N3-> $n3");
    print("Media-> $parcialMedia");
    print("$state");
    print("---------------------");
    if (state == "Prova final") {
      print("Qual a sua nota final?");
      String? finalNoteString = stdin.readLineSync();
      if (finalNoteString != null) {
        finalNote = double.parse(finalNoteString);
        finalNote = double.parse(finalNote.toStringAsPrecision(2));
        finalMedia = calcMediaFinal(parcialMedia, finalNote);
        state = stateMediaFina(finalMedia);
        
        print("---Sua situação---");
        print("N1-> $n1 | N2-> $n2 | N3-> $n3 | Nota final-> $finalNote");
        print("Media-> $finalMedia");
        print("$state");
        print("---------------------");
      } else {
        throw Exception("Valor nulo");
      }
    }
    
  } else {
    throw Exception("Valor nulo");
  }
}