import 'package:flutter_test/flutter_test.dart';
import 'package:cotacoes_app/api.dart';

void main() {
  test('Verifica se API retorna dados', () async {
    final data = await fetchRates();
    expect(data.containsKey('rates'), true);
  });
}

