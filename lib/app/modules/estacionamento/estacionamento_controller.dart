import 'package:fatec_estacionamento/app/models/veiculo_model.dart';
import 'package:fatec_estacionamento/app/repositories/estacionamento_repository.dart';
import 'package:fatec_estacionamento/app/repositories/interfaces/estacionamento_repository_interface.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'estacionamento_controller.g.dart';

class EstacionamentoController = _EstacionamentoControllerBase
    with _$EstacionamentoController;

abstract class _EstacionamentoControllerBase with Store {
  IEstacionamentoRepository repositorio;

  _EstacionamentoControllerBase({this.repositorio}) {}

  @observable
  List<Veiculo> veiculos = List<Veiculo>();

  @observable
  Color corBotaoEntradaSaida = Colors.green;

  @observable
  String labelBotaoEntradaSaida = "ENTRAR";

  @observable
  bool carregando = false;

  @action
  void clickBotaoEntradaSaida(Veiculo veiculo) {
    if (veiculo.entrada) {
      corBotaoEntradaSaida = Colors.red;
      labelBotaoEntradaSaida = "SAÍDA";
    } else {
      corBotaoEntradaSaida = Colors.green;
      labelBotaoEntradaSaida = "ENTRAR";
    }
    veiculo.entrada = !veiculo.entrada;
  }

  @action
  getVeiculos() async {
    veiculos = await repositorio.get();
    return veiculos;
  }
}
