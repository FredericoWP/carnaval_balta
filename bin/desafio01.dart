import 'dart:io';

import 'package:desafio01/desafio01.dart' as desafio01;

void main(List<String> arguments) {
  String? content;
  while (true) {
    print("Digite um texto:");
    content = stdin.readLineSync();
    if (content?.toLowerCase() == 'exit') {
      print("Volte Sempre !");
      break;
    }

    int char = desafio01.countChar(content);
    int word = desafio01.countWords(content);

    print("$char caracteres, $word palavras");
    print("====================================");
  }
}
