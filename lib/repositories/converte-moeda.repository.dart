import 'package:conversao_moedas/model/converte-moeda.model.dart';
import 'package:dio/dio.dart';

class ConverteMoedaRepository {
  Future<ConverteMoedaModel> obter(String origem, String destino) async {
    var url =
        "https://api.ratesapi.io/api/latest?base=${origem}&symbols=${destino}";
    Response response = await Dio().get(url);
    var dados = ConverteMoedaModel.fromJson(response.data);
    return dados;
  }
}
