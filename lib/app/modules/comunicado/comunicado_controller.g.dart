// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comunicado_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ComunicadoController on _ComunicadoControllerBase, Store {
  final _$comunicadosAtom = Atom(name: '_ComunicadoControllerBase.comunicados');

  @override
  List<ComunicadoStore> get comunicados {
    _$comunicadosAtom.reportRead();
    return super.comunicados;
  }

  @override
  set comunicados(List<ComunicadoStore> value) {
    _$comunicadosAtom.reportWrite(value, super.comunicados, () {
      super.comunicados = value;
    });
  }

  final _$getComunicadosAsyncAction =
      AsyncAction('_ComunicadoControllerBase.getComunicados');

  @override
  Future getComunicados() {
    return _$getComunicadosAsyncAction.run(() => super.getComunicados());
  }

  @override
  String toString() {
    return '''
comunicados: ${comunicados}
    ''';
  }
}
