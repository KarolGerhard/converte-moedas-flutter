import 'package:conversao_moedas/components/dropdown-button-tipo-moeda.widget.dart';
import 'package:conversao_moedas/controllers/converte-moeda.controller.dart';
import 'package:conversao_moedas/stores/app.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'busy.widget.dart';

class DestinyCoin extends StatelessWidget {
  ConverteMoedaController controller;

  DestinyCoin({@required this.controller});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Observer(
            builder: (_) => CMDButtonMoeda(
              alteraValorButton: controller.alteraDestino,
              value: controller.destino,
              onChanged: store.atualizaDestino,
            ),
          ),
        ),
        Expanded(
          child: Observer(
            builder: (_) {
              return CMBusy(
                busy: store.busy,
                child: Text(
                  store.valorConvertido.toStringAsFixed(2),
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 30,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
