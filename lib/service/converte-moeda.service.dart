import 'package:conversao_moedas/repositories/converte-moeda.repository.dart';

class ConverteMoedaService{
  ConverteMoedaRepository _repository;

  ConverteMoedaService(){
    _repository = new ConverteMoedaRepository();
  }
   
  Future<double> calcule(String origem, String destino, double valor) async {
    var dadosApi = await _repository.obter(origem, destino);

    //valor da taxa
    var taxaCambio = dadosApi.rates[destino];

    //valor de input
    var result = valor * taxaCambio;
    var valorFinal = double.parse(result.toStringAsFixed(2));
    //num.parse(result.toStringAsPrecision(3));

    return valorFinal;
  }
}