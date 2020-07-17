import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:fatec_estacionamento/app/models/veiculo_model.dart';

part 'veiculo_store.g.dart';

class VeiculoStore = _VeiculoStoreBase with _$VeiculoStore;

abstract class _VeiculoStoreBase with Store {
  @observable
  VeiculoModel veiculo;

  @observable
  Color corBotaoEntradaSaida = Colors.green;

  @action
  accorBotaoEntradaSaida() {}

  @computed
  String get labelBotaoEntradaSaida => veiculo.entrada ? "SAIR" : "ENTRAR";

  @observable
  bool carregando = false;

  @action
  void clickBotaoEntradaSaida() {
    veiculo.entrada = !veiculo.entrada;
    if (veiculo.entrada) {
      corBotaoEntradaSaida = Colors.red;
    } else {
      corBotaoEntradaSaida = Colors.green;
    }
  }
}
