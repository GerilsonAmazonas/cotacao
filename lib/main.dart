import 'package:cotacoes_app/boas_vindas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
      home: BoasVindasScreen(),
    );
  }
}
