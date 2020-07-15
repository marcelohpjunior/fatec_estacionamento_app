import 'package:fatec_estacionamento/app/models/veiculo_model.dart';
import 'package:fatec_estacionamento/app/repositories/estacionamento_repository.dart';
import 'package:fatec_estacionamento/app/repositories/interfaces/estacionamento_repository_interface.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'estacionamento_controller.g.dart';

class EstacionamentoController = _EstacionamentoControllerBase
    with _$EstacionamentoController;

abstract class _EstacionamentoControllerBase with Store {
  final IEstacionamentoRepository repositorio;

  _EstacionamentoControllerBase(this.repositorio) {}

  @observable
  List<Veiculo> veiculos = List<Veiculo>();

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

  @action
  getVeiculos() async {
    veiculos = await repositorio.get();
    return veiculos;
  }
}
