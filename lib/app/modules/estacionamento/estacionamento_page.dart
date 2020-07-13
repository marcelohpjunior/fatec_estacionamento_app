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
      body: ListView(
        children: <Widget>[
          // retornaCard(),
          retornaNOVOCard(
              EstacionamentoController(),
              "https://revistacarro.com.br/wp-content/uploads/2019/10/Volkswagen-Bras%C3%ADlia-6.jpg",
              "Volkswagen Brasília 1970 Amarela",
              "CBA-4321"),
          retornaNOVOCard(
              EstacionamentoController(),
              "https://i.pinimg.com/originals/57/5e/58/575e5808ad1b14380c54e3e9734a4883.jpg",
              "Yamaha XJ6 2014 Branca",
              "ABC-1234"),
        ],
      ),
    );
  }

  retornaNOVOCard(
      var controller, String urlImagem, String descricaoVeiculo, String placa) {
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
                      urlImagem,
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
                                      descricaoVeiculo,
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
                                      placa.toUpperCase(),
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
