import 'package:fatec_estacionamento/app/models/veiculo_model.dart';
import 'package:fatec_estacionamento/app/modules/estacionamento/estacionamento_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/veiculo_card_widget.dart';
import 'estacionamento_controller.dart';

class EstacionamentoPage extends StatefulWidget {
  final String title;
  const EstacionamentoPage({Key key, this.title = "Estacionamento"})
      : super(key: key);

  @override
  _EstacionamentoPageState createState() => _EstacionamentoPageState();
}

class _EstacionamentoPageState
    extends ModularState<EstacionamentoPage, EstacionamentoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder(
        future: controller.getVeiculos(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext ctxt, int index) {
                controller.veiculos[index].accorBotaoEntradaSaida();
                return VeiculoCard(
                  store: controller.veiculos[index],
                );
              });
        },
      ),
    );
  }
}
