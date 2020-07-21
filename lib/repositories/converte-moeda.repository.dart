import 'package:conversao_moedas/model/converteai.model.dart';
import 'package:dio/dio.dart';

class ConverteMoedaRepository{

  Future<ConverteAiModel> obter(String origem, String destino) async{
    var url = "https://api.ratesapi.io/api/latest?base=${origem}&symbols=${destino}";
    Response response = await Dio().get(url);
    print(response);
    var dados = ConverteAiModel.fromJson(response.data);
    print(dados);
    return dados;
  }
}