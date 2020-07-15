import 'package:fatec_estacionamento/app/models/veiculo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
                return retornaNOVOCard(snapshot.data[index]);
              });
        },
      ),
    );
  }

  retornaNOVOCard(Veiculo veiculo) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      height: 150,
      width: double.maxFinite,
      child: Card(
        //color: Colors.black,
        elevation: 5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    width: 100,
                    // color: Colors.red,
                    child: Image.network(
                      veiculo.imagem,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        //color: Colors.amber,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      veiculo.Decricao,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      veiculo.placa.toUpperCase(),
                                      //"ADB-1234",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    //color: Colors.blue,
                    child: Observer(builder: (_) {
                      return RaisedButton(
                        color: controller.corBotaoEntradaSaida,
                        onPressed: () async {
                          controller.carregando = true;
                          await Future.delayed(Duration(seconds: 2))
                              .then((onValue) => true);

                          controller.clickBotaoEntradaSaida();
                          controller.carregando = false;
                        },
                        child: Observer(builder: (_) {
                          return controller.carregando
                              ? CircularProgressIndicator(
                                  backgroundColor: Colors.white,
                                  valueColor: new AlwaysStoppedAnimation<Color>(
                                      controller.corBotaoEntradaSaida),
                                )
                              : Text(
                                  controller.labelBotaoEntradaSaida,
                                  style: TextStyle(color: Colors.white),
                                );
                        }),
                      );
                      // retornaLabelEntradaSaida(controller.carregando));
                    }),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
