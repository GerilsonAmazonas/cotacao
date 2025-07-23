import 'package:flutter/material.dart';
import 'api.dart';
import 'detalhes.dart';

class CotacoesScreen extends StatefulWidget {
  @override
  _CotacoesScreenState createState() => _CotacoesScreenState();
}

class _CotacoesScreenState extends State<CotacoesScreen> {
  Map<String, dynamic>? rates;

  @override
  void initState() {
    super.initState();
    fetchRates().then((data) {
      setState(() {
        rates = data['rates'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cotações BEMOL')),
      body: rates == null
          ? Center(child: CircularProgressIndicator())
          : ListView(
              children: rates!.entries.map((entry) {
                return ListTile(
                  title: Text('${entry.key}'),
                  subtitle: Text('${entry.value}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetalhesMoeda(
                          moeda: entry.key,
                          valor: entry.value.toString(),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
    );
  }
}