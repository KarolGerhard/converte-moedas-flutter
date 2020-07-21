import 'package:conversao_moedas/components/button-tipo-moeda.widget.dart';
import 'package:conversao_moedas/controllers/converte-moeda.controller.dart';
import 'package:conversao_moedas/stores/app.store.dart';
import 'package:conversao_moedas/widgets/busy.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DestinyCoin extends StatelessWidget {
  ConverteMoedaController controller;

  NumberFormat formatter = NumberFormat("00.00");
  double initialValue = num.parse(0.18941.toStringAsPrecision(2));
  double value = 0.19;
  

// var destinoCtrl = new MoneyMaskedTextController();
  //TextEditingController destinoCtrl;
//   Function alteraValor;
//   Function alteraDestino;
//   double recebeValor;

 DestinyCoin({
 // @required this.destinoCtrl,
  //  this.alteraValor,
  //  this.alteraDestino,
  //  this.recebeValor,
  @required this.controller
 });


  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    //final controller = new ConverteMoedaController(store);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
         Expanded(
             child: Observer(
             builder: (_) => CVButtonMoeda(
                alteraValorButton: controller.alteraDestino,
                value: "EUR",
                onChanged: store.atualizaDestino,
              ),
            ),
         ),
          
          Expanded(
              child: Observer(
              builder: (_) {
                return Text('${store.valorConvertido.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
               );
              },
            ),
          ),
        ],
      );
  }
}