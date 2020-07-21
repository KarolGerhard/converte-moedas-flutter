import 'package:conversao_moedas/repositories/converte-moeda.repository.dart';

class ConverteMoedaService {
  ConverteMoedaRepository _repository;

  ConverteMoedaService() {
    _repository = ConverteMoedaRepository();
  }

  Future<double> calcule(String origem, String destino, double valor) async {
    var dadosApi = await _repository.obter(origem, destino);

    var taxaCambio = dadosApi.rates[destino];

    var result = valor * taxaCambio;

    var valorFinal = double.parse(result.toStringAsFixed(2));

    return valorFinal;
  }
}
