import 'package:conversao_moedas/controllers/converte-moeda.controller.dart';
import 'package:conversao_moedas/stores/app.store.dart';
import 'package:conversao_moedas/widgets/destino-moeda.widget.dart';
import 'package:conversao_moedas/widgets/logo.widget.dart';
import 'package:conversao_moedas/widgets/origem-moeda.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
 var _entrada = new TextEditingController();

  @override
  Widget build(BuildContext context) {
      final store = Provider.of<AppStore>(context);
      final controller = new ConverteMoedaController(store);

      return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: AnimatedContainer(duration: Duration(
          milliseconds: 1200,
        ),
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
              ),
              
              Center(child: Logo()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: OriginCoin(origemCtrl:_entrada, controller: controller,),
              ),
              DestinyCoin(controller: controller,),
           
            ],
          ),
        ),
      ),
    );
  }
}