import 'package:fatec_estacionamento/app/modules/shared/models/veiculo_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'veiculo_store.g.dart';

class VeiculoStore = _VeiculoStoreBase with _$VeiculoStore;

abstract class _VeiculoStoreBase with Store {
  @observable
  VeiculoModel veiculo;

  @observable
  Color corBotaoEntradaSaida = Colors.green;

  @computed
  String get labelBotaoEntradaSaida => veiculo.entrada ? "SAIR" : "ENTRAR";

  @observable
  bool carregando = false;

  @action
  void attCorBotaoEntradaSaida() {
    if (veiculo.entrada) {
      corBotaoEntradaSaida = Colors.red;
    } else {
      corBotaoEntradaSaida = Colors.green;
    }
  }

  @action
  void clickBotaoEntradaSaida() {
    veiculo.entrada = !veiculo.entrada;
    attCorBotaoEntradaSaida();
  }
}
