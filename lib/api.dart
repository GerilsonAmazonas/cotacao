//ARQUIVO PARA CHAMADA  DO API - AS COTAÇOES DAS MOEDAS

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchRates() async {
  final url = Uri.parse('https://api.exchangerate-api.com/v4/latest/USD');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Erro ao carregar cotações');
  }
}