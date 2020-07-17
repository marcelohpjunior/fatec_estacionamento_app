// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'veiculo_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$VeiculoStore on _VeiculoStoreBase, Store {
  Computed<String> _$labelBotaoEntradaSaidaComputed;

  @override
  String get labelBotaoEntradaSaida => (_$labelBotaoEntradaSaidaComputed ??=
          Computed<String>(() => super.labelBotaoEntradaSaida,
              name: '_VeiculoStoreBase.labelBotaoEntradaSaida'))
      .value;

  final _$veiculoAtom = Atom(name: '_VeiculoStoreBase.veiculo');

  @override
  VeiculoModel get veiculo {
    _$veiculoAtom.reportRead();
    return super.veiculo;
  }

  @override
  set veiculo(VeiculoModel value) {
    _$veiculoAtom.reportWrite(value, super.veiculo, () {
      super.veiculo = value;
    });
  }

  final _$corBotaoEntradaSaidaAtom =
      Atom(name: '_VeiculoStoreBase.corBotaoEntradaSaida');

  @override
  Color get corBotaoEntradaSaida {
    _$corBotaoEntradaSaidaAtom.reportRead();
    return super.corBotaoEntradaSaida;
  }

  @override
  set corBotaoEntradaSaida(Color value) {
    _$corBotaoEntradaSaidaAtom.reportWrite(value, super.corBotaoEntradaSaida,
        () {
      super.corBotaoEntradaSaida = value;
    });
  }

  final _$carregandoAtom = Atom(name: '_VeiculoStoreBase.carregando');

  @override
  bool get carregando {
    _$carregandoAtom.reportRead();
    return super.carregando;
  }

  @override
  set carregando(bool value) {
    _$carregandoAtom.reportWrite(value, super.carregando, () {
      super.carregando = value;
    });
  }

  final _$_VeiculoStoreBaseActionController =
      ActionController(name: '_VeiculoStoreBase');

  @override
  dynamic accorBotaoEntradaSaida() {
    final _$actionInfo = _$_VeiculoStoreBaseActionController.startAction(
        name: '_VeiculoStoreBase.accorBotaoEntradaSaida');
    try {
      return super.accorBotaoEntradaSaida();
    } finally {
      _$_VeiculoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clickBotaoEntradaSaida() {
    final _$actionInfo = _$_VeiculoStoreBaseActionController.startAction(
        name: '_VeiculoStoreBase.clickBotaoEntradaSaida');
    try {
      return super.clickBotaoEntradaSaida();
    } finally {
      _$_VeiculoStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
veiculo: ${veiculo},
corBotaoEntradaSaida: ${corBotaoEntradaSaida},
carregando: ${carregando},
labelBotaoEntradaSaida: ${labelBotaoEntradaSaida}
    ''';
  }
}
