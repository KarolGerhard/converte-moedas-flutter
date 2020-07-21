import 'package:conversao_moedas/components/button-tipo-moeda.widget.dart';
import 'package:conversao_moedas/controllers/converte-moeda.controller.dart';
import 'package:conversao_moedas/stores/app.store.dart';
import 'package:conversao_moedas/widgets/input.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class OriginCoin extends StatelessWidget {
 TextEditingController origemCtrl;
 ConverteMoedaController controller;
//  Function alteraValor;
//  Function alteraOrigem;

 
 OriginCoin({
   @required this.origemCtrl,
  //  this.alteraValor,
  //  this.alteraOrigem,
  @required this.controller
 });


  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
   // final controller = new ConverteMoedaController(store);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
            child: Observer(
            builder: (_) => 
            CVButtonMoeda(
              alteraValorButton: controller.alteraOrigem,
              value: "EUR",
              onChanged: store.atualizaOrigem,
              
            ),
          ),
        ),

        Expanded(
          child: Observer(builder: (_) =>
            Input(
              ctrl: origemCtrl, 
              alteraValor: controller.alteraValor,
              
            ),
          ),
        ),
      ],
    );
  }
}