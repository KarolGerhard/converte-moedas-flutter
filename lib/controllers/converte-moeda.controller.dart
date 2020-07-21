import 'package:conversao_moedas/service/converte-moeda.service.dart';
import 'package:conversao_moedas/stores/app.store.dart';

class ConverteMoedaController {
  AppStore _store;
  ConverteMoedaService _service = new ConverteMoedaService();
  double valor;
  String origem = "EUR";
  String destino = "USD";

  ConverteMoedaController(AppStore store) {
    _store = store;
  }

  Future calcularValorMoeda() async {
    if (valor != null && origem != null && destino != null) {
      _store.busy = true;
      var resultado = await _service.calcule(origem, destino, valor);
      _store.busy = false;
      _store.atualizaValor(resultado);
    }
  }

  Future alteraOrigem(String origem) async {
    _store.busy = true;
    this.origem = origem;
    await calcularValorMoeda();
    _store.busy = false;
  }

  Future alteraDestino(String destino) async {
    _store.busy = true;
    this.destino = destino;
    await calcularValorMoeda();
    _store.busy = false;

  }

  Future alteraValor(double valor) async {
    _store.busy = true;
    this.valor = valor;
    await calcularValorMoeda();
    _store.busy = false;

  }
}
