import 'package:flutter/material.dart';
import 'api.dart';
import 'detalhes.dart';

class CotacoesScreen extends StatefulWidget {
  @override
  _CotacoesScreenState createState() => _CotacoesScreenState();
}

class _CotacoesScreenState extends State<CotacoesScreen> {
  Map<String, dynamic>? rates;
  bool _stretch = true;

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
      body: rates == null
          ? Center(child: CircularProgressIndicator())
          : CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverAppBar(
                stretch: _stretch,
                expandedHeight: 200.0,
                stretchTriggerOffset: 300.0,
                flexibleSpace:  const FlexibleSpaceBar(
                  title: Text("Cotação Today"),
                  background: FlutterLogo(),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    String moeda = rates!.keys.elementAt(index);
                    var valor = rates![moeda];
                    return ListTile(
                      title: Text(moeda),
                      subtitle: Text(valor.toString()),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetalhesMoeda(
                              moeda: moeda,
                              valor: valor.toString(),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  childCount: rates!.length,
                ),
              ),
            ],
          ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Stretch'),
              Switch(
                value: _stretch,
                onChanged: (val) {
                  setState(() {
                    _stretch = val;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}