import 'dart:io';

import 'package:carnaval_balta/desafio_01.dart' as primeiro;
import 'package:carnaval_balta/desafio_02.dart' as segundo;

desafios() {
  String? resp;
  do {
    print("\r\n=========================================================");
    print("Desafios de carnaval Balta");
    print("=========================================================\r\n");
    print("1 - Desafio1 - 17/FEV => 'Contagem de caracteres e palavras'");
    print("2 - Desafio2 - 18/FEV => 'IMC'");
    print("9 - Sair");
    print("Escolha: ");
    resp = stdin.readLineSync();
    switch (resp?.trim()) {
      case '1':
        desafio01();
        break;
      case '2':
        desafio02();
        break;
      case '9':
        print("Obrigado por participar, volte sempre!");
        print("=========================================================\r\n");
        break;
      default:
        print("😑 Opção inválida!");
        break;
    }
  } while (resp?.trim() != '9');
}

void desafio01() {
  primeiro.desafio();
}

void desafio02() {
  segundo.desafio();
}
