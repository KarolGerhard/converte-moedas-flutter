import 'package:conversao_moedas/service/converte-moeda.service.dart';
import 'package:conversao_moedas/stores/app.store.dart';

class ConverteMoedaController{
  AppStore _store;
  ConverteMoedaService _service =  new ConverteMoedaService();
  double valor;
  String origem;
  String destino;

  ConverteMoedaController(AppStore store){
    _store = store;
  }

  Future calcularValorMoeda() async {
    if(valor != null && origem != null && destino != null){
      _store.busy = true;
      var resultado = await _service.calcule(origem, destino, valor);
      _store.atualizaValor(resultado);
     print("resultado: ${resultado}");
    }
  }

  Future alteraOrigem(String origem) async{
    this.origem = origem;
     print("origem: ${origem}");
    await calcularValorMoeda();
  } 

  Future alteraDestino(String destino) async {
    this.destino = destino;
    print("Destino: ${destino}");
    await calcularValorMoeda();
  }

  Future alteraValor(double valor) async{
    this.valor = valor;
    print("valor: ${valor}");
    await calcularValorMoeda();
  } 
}