// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estacionamento_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EstacionamentoController on _EstacionamentoControllerBase, Store {
  final _$veiculosAtom = Atom(name: '_EstacionamentoControllerBase.veiculos');

  @override
  List<VeiculoStore> get veiculos {
    _$veiculosAtom.reportRead();
    return super.veiculos;
  }

  @override
  set veiculos(List<VeiculoStore> value) {
    _$veiculosAtom.reportWrite(value, super.veiculos, () {
      super.veiculos = value;
    });
  }

  final _$getVeiculosAsyncAction =
      AsyncAction('_EstacionamentoControllerBase.getVeiculos');

  @override
  Future getVeiculos() {
    return _$getVeiculosAsyncAction.run(() => super.getVeiculos());
  }

  @override
  String toString() {
    return '''
veiculos: ${veiculos}
    ''';
  }
}
