import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  var iconMostrarSenha = Icons.visibility;

  @observable
  var mostrarSenha = false;

  @action
  void mudarIconSenha() {
    mostrarSenha = !mostrarSenha;
    iconMostrarSenha = mostrarSenha ? Icons.visibility : Icons.visibility_off;
  }
}
