import 'package:conversao_moedas/controllers/converte-moeda.controller.dart';
import 'package:conversao_moedas/stores/app.store.dart';
import 'package:conversao_moedas/widgets/busy.widget.dart';
import 'package:conversao_moedas/widgets/destino-moeda.widget.dart';
import 'package:conversao_moedas/widgets/logo.widget.dart';
import 'package:conversao_moedas/widgets/origem-moeda.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var _entrada = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    final controller = new ConverteMoedaController(store);

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView(
          children: <Widget>[
            Center(child: Logo()),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: OriginCoin(
                origemCtrl: _entrada,
                controller: controller,
              ),
            ),
            DestinyCoin(
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}
