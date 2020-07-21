import 'package:conversao_moedas/components/dropdown-button-tipo-moeda.widget.dart';
import 'package:conversao_moedas/controllers/converte-moeda.controller.dart';
import 'package:conversao_moedas/stores/app.store.dart';
import 'package:conversao_moedas/widgets/input.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class OriginCoin extends StatelessWidget {
  var origemCtrl =  new MoneyMaskedTextController();
  final ConverteMoedaController controller;

  OriginCoin({@required this.origemCtrl, @required this.controller});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Observer(
            builder: (_) => CMDButtonMoeda(
              alteraValorButton: controller.alteraOrigem,
              value: controller.origem,
              onChanged: store.atualizaOrigem,
            ),
          ),
        ),
        Expanded(
          child: Observer(
            builder: (_) => Input(
              ctrl: origemCtrl,
              alteraValor: controller.alteraValor,
            ),
          ),
        ),
      ],
    );
  }
}
