import 'package:flutter/material.dart';

class DetalhesMoeda extends StatelessWidget {
  final String moeda;
  final String valor;

  const DetalhesMoeda({Key? key, required this.moeda, required this.valor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes - $moeda')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Moeda: $moeda', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Valor: $valor', style: TextStyle(fontSize: 20)),
            Text('Notícias sobre a moeda em breve... ', style: TextStyle(fontSize: 40),),
          ],
        ),
      ),
    );
  }
}