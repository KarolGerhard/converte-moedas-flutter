import 'package:mobx/mobx.dart';
part 'app.store.g.dart';


class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  
  @observable
  String origem = "EUR";

  @observable
  String destino = "EUR";

  @observable
  double valorConvertido = 0.00;

  @observable
  bool busy = false;

  @action
  void atualizaValor(double state){
    valorConvertido = state;
  }

  @action
  void atualizaOrigem(String valorOrigem){
    origem = valorOrigem;
  }

  @action
  void atualizaDestino(String valorDestino){
    origem = valorDestino;
  }



}