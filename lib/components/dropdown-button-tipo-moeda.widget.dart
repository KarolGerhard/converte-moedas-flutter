import 'package:conversao_moedas/stores/app.store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CMDButtonMoeda extends StatefulWidget {
  final Function alteraValorButton;
  final String value;
  final ValueChanged<String> onChanged;

  CMDButtonMoeda({
    this.alteraValorButton,
    this.value,
    this.onChanged,
  });

  @override
  _CMDButtonMoedaState createState() => _CMDButtonMoedaState(value);
}

class _CMDButtonMoedaState extends State<CMDButtonMoeda> {
  String value;

  _CMDButtonMoedaState(this.value);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);

    return DropdownButton<String>(
      value: value,
      icon: Icon(Icons.arrow_drop_down_circle),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.black54),
      onChanged: (String newValue) {
        setState(() {
          value = newValue;
        });
        widget.alteraValorButton(newValue);
        widget.onChanged(newValue);
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
        'EUR'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
