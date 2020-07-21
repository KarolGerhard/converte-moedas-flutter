import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  var ctrl = new MoneyMaskedTextController(decimalSeparator: ".");
  final Function alteraValor;

  Input({
    @required this.ctrl,
    this.alteraValor,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        width: 40,
        alignment: Alignment.centerRight,
        child: TextFormField(
          controller: ctrl,
          keyboardType: TextInputType.number,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
//            border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(25.0),
//              borderSide: BorderSide(),
//            ),
          ),
          validator: (String text) {
            if (text.isEmpty) return "Insira um valor";
            var valorDouble = double.tryParse(text);
            if (valorDouble == null) return "Digite um valor válido";
            return null;
          },
          onChanged: (String valor) {
            print(valor);
            if (_formkey.currentState.validate()) {
              alteraValor(double.tryParse(valor));
            }
          },
        ),
      ),
    );
  }
}
