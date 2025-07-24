// arquivo  feito para dar uma tela de apresentação do APP

import 'package:flutter/material.dart';
import 'cotaçoes_screen.dart'; //para importar utilizar cotaçoes_screen

class BoasVindasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 117, 188, 255),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bem-vindo ao Cotações de Moedas!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Acompanhe em tempo real as cotações de diversas moedas do mundo.',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => CotacoesScreen()),
                  );
                },
                child: Text('ACESSAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}