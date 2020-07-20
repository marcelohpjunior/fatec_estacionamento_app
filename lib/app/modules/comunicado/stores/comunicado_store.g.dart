// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comunicado_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ComunicadoStore on _ComunicadoStoreBase, Store {
  final _$comunicadoAtom = Atom(name: '_ComunicadoStoreBase.comunicado');

  @override
  ComunicadoModel get comunicado {
    _$comunicadoAtom.reportRead();
    return super.comunicado;
  }

  @override
  set comunicado(ComunicadoModel value) {
    _$comunicadoAtom.reportWrite(value, super.comunicado, () {
      super.comunicado = value;
    });
  }

  @override
  String toString() {
    return '''
comunicado: ${comunicado}
    ''';
  }
}
