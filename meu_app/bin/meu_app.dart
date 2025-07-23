import 'dart:io';

void main(List<String> arguments) {
  print("Olá mundo!! Qual o seu nome??");
  var entrada = stdin.readLineSync();
  print("Prazer, $entrada");
}
