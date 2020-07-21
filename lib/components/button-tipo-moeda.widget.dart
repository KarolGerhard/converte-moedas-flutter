import 'package:conversao_moedas/stores/app.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CVButtonMoeda extends StatefulWidget {
  final Function alteraValorButton;
  final String value;
  final ValueChanged<String> onChanged;
  
  CVButtonMoeda({
    this.alteraValorButton,
    this.value,
    this.onChanged,
  });

  @override
  _CVButtonMoedaState createState() => _CVButtonMoedaState(value);
}

class _CVButtonMoedaState extends State<CVButtonMoeda> {
 // String dropdownValue = 'EUR';
 String value;

 _CVButtonMoedaState(this.value);

  @override
  Widget build(BuildContext context) {
     final store = Provider.of<AppStore>(context);
      print(store.origem);
    return DropdownButton<String>(
        value: value,
        icon: Icon(Icons.monetization_on),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.black),
        onChanged: (String newValue) {
          setState(() {
            value = newValue;
          });
        //   setState(() {
        // //    dropdownValue = newValue;
           widget.alteraValorButton(newValue);
           widget.onChanged(newValue);

        //   });
        // store.atualizaOrigem(newValue);
        // store.atualizaDestino(newValue);
        },
        items: <String>[
          "GBP", 
          "HKD", 
          "IDR",
          "ILS",
          "DKK",
          "INR",
          "CHF",
          "MXN",
          "CZK",
          "SGD",
          "THB",
          "HRK",
          "MYR",
          "NOK",
          "CNY",
          "BGN",
          "PHP",
          "SEK",
          "PLN",
          "ZAR",
          "CAD",
          "ISK",
          "BRL",
          "RON",
          "NZD",
          "TRY",
          "JPY",
          "RUB",
          "KRW",
          "USD",
          "HUF",
          "AUD",
          'EUR']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      
    );
  }
}
