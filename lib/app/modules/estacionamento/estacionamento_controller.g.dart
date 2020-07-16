// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estacionamento_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EstacionamentoController on _EstacionamentoControllerBase, Store {
  final _$veiculosAtom = Atom(name: '_EstacionamentoControllerBase.veiculos');

  @override
  List<Veiculo> get veiculos {
    _$veiculosAtom.reportRead();
    return super.veiculos;
  }

  @override
  set veiculos(List<Veiculo> value) {
    _$veiculosAtom.reportWrite(value, super.veiculos, () {
      super.veiculos = value;
    });
  }

  final _$corBotaoEntradaSaidaAtom =
      Atom(name: '_EstacionamentoControllerBase.corBotaoEntradaSaida');

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

  final _$labelBotaoEntradaSaidaAtom =
      Atom(name: '_EstacionamentoControllerBase.labelBotaoEntradaSaida');

  @override
  String get labelBotaoEntradaSaida {
    _$labelBotaoEntradaSaidaAtom.reportRead();
    return super.labelBotaoEntradaSaida;
  }

  @override
  set labelBotaoEntradaSaida(String value) {
    _$labelBotaoEntradaSaidaAtom
        .reportWrite(value, super.labelBotaoEntradaSaida, () {
      super.labelBotaoEntradaSaida = value;
    });
  }

  final _$carregandoAtom =
      Atom(name: '_EstacionamentoControllerBase.carregando');

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

  final _$getVeiculosAsyncAction =
      AsyncAction('_EstacionamentoControllerBase.getVeiculos');

  @override
  Future getVeiculos() {
    return _$getVeiculosAsyncAction.run(() => super.getVeiculos());
  }

  final _$_EstacionamentoControllerBaseActionController =
      ActionController(name: '_EstacionamentoControllerBase');

  @override
  void clickBotaoEntradaSaida(Veiculo veiculo) {
    final _$actionInfo =
        _$_EstacionamentoControllerBaseActionController.startAction(
            name: '_EstacionamentoControllerBase.clickBotaoEntradaSaida');
    try {
      return super.clickBotaoEntradaSaida(veiculo);
    } finally {
      _$_EstacionamentoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
veiculos: ${veiculos},
corBotaoEntradaSaida: ${corBotaoEntradaSaida},
labelBotaoEntradaSaida: ${labelBotaoEntradaSaida},
carregando: ${carregando}
    ''';
  }
}
