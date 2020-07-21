// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on _AppStore, Store {
  final _$origemAtom = Atom(name: '_AppStore.origem');

  @override
  String get origem {
    _$origemAtom.context.enforceReadPolicy(_$origemAtom);
    _$origemAtom.reportObserved();
    return super.origem;
  }

  @override
  set origem(String value) {
    _$origemAtom.context.conditionallyRunInAction(() {
      super.origem = value;
      _$origemAtom.reportChanged();
    }, _$origemAtom, name: '${_$origemAtom.name}_set');
  }

  final _$destinoAtom = Atom(name: '_AppStore.destino');

  @override
  String get destino {
    _$destinoAtom.context.enforceReadPolicy(_$destinoAtom);
    _$destinoAtom.reportObserved();
    return super.destino;
  }

  @override
  set destino(String value) {
    _$destinoAtom.context.conditionallyRunInAction(() {
      super.destino = value;
      _$destinoAtom.reportChanged();
    }, _$destinoAtom, name: '${_$destinoAtom.name}_set');
  }

  final _$valorConvertidoAtom = Atom(name: '_AppStore.valorConvertido');

  @override
  double get valorConvertido {
    _$valorConvertidoAtom.context.enforceReadPolicy(_$valorConvertidoAtom);
    _$valorConvertidoAtom.reportObserved();
    return super.valorConvertido;
  }

  @override
  set valorConvertido(double value) {
    _$valorConvertidoAtom.context.conditionallyRunInAction(() {
      super.valorConvertido = value;
      _$valorConvertidoAtom.reportChanged();
    }, _$valorConvertidoAtom, name: '${_$valorConvertidoAtom.name}_set');
  }

  final _$busyAtom = Atom(name: '_AppStore.busy');

  @override
  bool get busy {
    _$busyAtom.context.enforceReadPolicy(_$busyAtom);
    _$busyAtom.reportObserved();
    return super.busy;
  }

  @override
  set busy(bool value) {
    _$busyAtom.context.conditionallyRunInAction(() {
      super.busy = value;
      _$busyAtom.reportChanged();
    }, _$busyAtom, name: '${_$busyAtom.name}_set');
  }

  final _$_AppStoreActionController = ActionController(name: '_AppStore');

  @override
  void atualizaValorBusy(bool state) {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.atualizaValorBusy(state);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void atualizaValor(double state) {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.atualizaValor(state);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void atualizaOrigem(String valorOrigem) {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.atualizaOrigem(valorOrigem);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void atualizaDestino(String valorDestino) {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.atualizaDestino(valorDestino);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }
}
