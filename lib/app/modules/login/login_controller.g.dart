// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$iconMostrarSenhaAtom =
      Atom(name: '_LoginControllerBase.iconMostrarSenha');

  @override
  IconData get iconMostrarSenha {
    _$iconMostrarSenhaAtom.reportRead();
    return super.iconMostrarSenha;
  }

  @override
  set iconMostrarSenha(IconData value) {
    _$iconMostrarSenhaAtom.reportWrite(value, super.iconMostrarSenha, () {
      super.iconMostrarSenha = value;
    });
  }

  final _$mostrarSenhaAtom = Atom(name: '_LoginControllerBase.mostrarSenha');

  @override
  bool get mostrarSenha {
    _$mostrarSenhaAtom.reportRead();
    return super.mostrarSenha;
  }

  @override
  set mostrarSenha(bool value) {
    _$mostrarSenhaAtom.reportWrite(value, super.mostrarSenha, () {
      super.mostrarSenha = value;
    });
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  void mudarIconSenha() {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.mudarIconSenha');
    try {
      return super.mudarIconSenha();
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
iconMostrarSenha: ${iconMostrarSenha},
mostrarSenha: ${mostrarSenha}
    ''';
  }
}
