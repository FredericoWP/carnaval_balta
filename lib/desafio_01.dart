import 'dart:io';

int countWords(String? text) {
  if (text == null || text.trim().isEmpty) return 0;

  int words = 0;
  var caracteres = text.split(" ");

  for (var w in caracteres) {
    if (w.trim().isNotEmpty) words++;
  }

  return words;
}

int countChar(String? text) {
  if (text == null || text.trim().isEmpty) return 0;
  var caracteres = text.replaceAll(" ", "").split("");
  var nCaract = caracteres.length;
  return nCaract;
}

void desafio() {
  print("\r\n=====================================");
  print("> Caracteres e Palavras");
  print("=====================================");
  String? content;
  while (true) {
    print("Digite um texto:");
    content = stdin.readLineSync();
    if (content?.toLowerCase() == 'exit') {
      print("Volte Sempre !");
      break;
    }

    int char = countChar(content);
    int word = countWords(content);

    print("$char caracteres, $word palavras");
    print("====================================");
  }
}
