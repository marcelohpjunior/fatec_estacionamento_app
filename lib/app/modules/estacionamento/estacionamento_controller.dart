import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'estacionamento_controller.g.dart';

class EstacionamentoController = _EstacionamentoControllerBase
    with _$EstacionamentoController;

abstract class _EstacionamentoControllerBase with Store {
  @observable
  Color corBotaoEntradaSaida = Colors.green;

  @observable
  String labelBotaoEntradaSaida = "ENTRAR";
  bool entrada = true;

  @observable
  bool carregando = false;

  @action
  void clickBotaoEntradaSaida() {
    entrada = !entrada;
    if (entrada) {
      corBotaoEntradaSaida = Colors.green;
      labelBotaoEntradaSaida = "ENTRAR";
    } else {
      corBotaoEntradaSaida = Colors.red;
      labelBotaoEntradaSaida = "SAÍDA";
    }
  }
}
