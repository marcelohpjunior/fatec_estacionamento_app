import 'package:fatec_estacionamento/app/modules/estacionamento/store/veiculo_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class VeiculoCard extends StatelessWidget {
  VeiculoStore store;

  VeiculoCard({this.store});

  @override
  Widget build(BuildContext context) {
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
                      store.veiculo.imagem,
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
                                      store.veiculo.Decricao,
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
                                      store.veiculo.placa.toUpperCase(),
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
                        color: store.corBotaoEntradaSaida,
                        onPressed: () async {
                          store.carregando = true;
                          await Future.delayed(Duration(seconds: 2))
                              .then((onValue) => true);

                          store.clickBotaoEntradaSaida();
                          store.accorBotaoEntradaSaida();
                          store.carregando = false;
                        },
                        child: Observer(builder: (_) {
                          return store.carregando
                              ? CircularProgressIndicator(
                                  backgroundColor: Colors.white,
                                  valueColor: new AlwaysStoppedAnimation<Color>(
                                      store.corBotaoEntradaSaida),
                                )
                              : Text(
                                  store.labelBotaoEntradaSaida,
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
