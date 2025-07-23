// Arquivo principal para a navegação

// import são para a utilização de bibliotecas prontas do próprio  dart
import 'package:cotacoes_app/boas_vindas.dart';
import 'package:flutter/material.dart'; //junto com boas_vindas.dart feito por mim

void main() {
  runApp(const MyApp()); //LINHA PARA ACIONAR O MYAPP PARA RODAR O APP
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: const Color.fromARGB(255, 132, 195, 255),
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 20),
        ),
      ),
      home: BoasVindasScreen(), //LINHA IMPORTANTE PARA ACIONAR O CONTEÚDO PRINCIPAL
    );
  }
}