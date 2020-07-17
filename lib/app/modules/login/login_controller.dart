import 'package:fatec_estacionamento/app/models/aluno_model.dart';
import 'package:fatec_estacionamento/app/services/interfaces/ilocal_database_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  ILocalDataBaseService localDataBaseService;
  _LoginControllerBase({this.localDataBaseService});

  TextEditingController raEditingController = TextEditingController();
  TextEditingController senhaEditingController = TextEditingController();

  @observable
  Aluno aluno = Aluno();

  @observable
  IconData iconMostrarSenha = Icons.visibility;

  @observable
  bool mostrarSenha = false;

  @observable
  bool manterConectado = false;

  @action
  void mudarSwitch(value) {
    manterConectado = value;
  }

  @action
  void mudarIconSenha() {
    mostrarSenha = !mostrarSenha;
    iconMostrarSenha = mostrarSenha ? Icons.visibility : Icons.visibility_off;
  }

  salvarLoginLocalDB() {
    localDataBaseService.put("manterConectado", manterConectado);
    if (manterConectado) {
      aluno.ra = int.parse(raEditingController.text);
      localDataBaseService.put("ra", aluno.ra);
      aluno.senha = raEditingController.text;
      localDataBaseService.put("senha", aluno.senha);
    } else {
      localDataBaseService.put("ra", 0);
      localDataBaseService.put("senha", "");
    }
  }

  carregarLoginLocalDB() {
    localDataBaseService.get(key: "manterConectado").then((value) {
      manterConectado = value != null ? value : false;
    });

    localDataBaseService.get(key: "ra").then((value) {
      aluno.ra = value;
      raEditingController.text =
          aluno.ra != null && aluno.ra > 0 ? aluno.ra.toString() : "";
    });

    localDataBaseService.get(key: "senha").then((value) {
      aluno.senha = value;
      senhaEditingController.text = aluno.senha;
    });
  }
}
