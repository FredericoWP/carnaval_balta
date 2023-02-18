import 'dart:io';

desafio() {
  print("\r\n=======================================");
  print("> Calculo do Índice  de massa corporal");
  print("=======================================");
  double peso = 0.0;
  do {
    print("Infore seu peso atual:");
    peso = getValue();
    if (peso <= 0) print("Peso inválido!");
  } while (peso <= 0);

  double altura = 0.0;
  do {
    print("Infore sua altura atual:");
    altura = getValue();
    if (altura <= 0) print("altura inválida!");
  } while (altura <= 0);
  final imc = IMC(altura: altura, peso: peso);
  imc.calculo();
  print("\r\n- Seu IMC é ${imc.result.toStringAsFixed(2)}");
  print("- ${imc.classificacao?.descricao}");
  print("- Risco: ${imc.classificacao?.risco}");
}

double getValue() {
  var value = stdin.readLineSync();
  value = value?.replaceAll(",", ".") ?? '';
  return double.tryParse(value) ?? 0.0;
}

class IMC {
  double altura;
  double peso;
  double result;
  Classe? classificacao;
  IMC({required this.altura, required this.peso, this.result = 0.0});

  calculo() {
    result = peso / (altura * altura);

    if (result <= 16) {
      classificacao = Classe(descricao: "Magreza Grau III", risco: "");
      return;
    } else if (result <= 16.9) {
      classificacao = Classe(descricao: "Magreza Grau II", risco: "");
      return;
    } else if (result <= 18.4) {
      classificacao = Classe(descricao: "Magreza Grau I", risco: "");
      return;
    } else if (result <= 24.9) {
      classificacao = Classe(descricao: "Eutrofia", risco: "");
      return;
    } else if (result <= 29.9) {
      classificacao = Classe(descricao: "Sobrepeso", risco: "Aumentado");
      return;
    } else if (result <= 34.9) {
      classificacao = Classe(descricao: "Obesidade Grau I", risco: "Moderado");
      return;
    } else if (result <= 40) {
      classificacao = Classe(descricao: "Obesidade Grau II", risco: "Grave");
      return;
    } else {
      classificacao =
          Classe(descricao: "Obesidade Grau III", risco: "Muito grave");
      return;
    }
  }
}

class Classe {
  String? descricao;
  String? risco;
  Classe({this.descricao, this.risco});
}
