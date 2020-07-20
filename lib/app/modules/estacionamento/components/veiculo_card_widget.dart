import 'package:fatec_estacionamento/app/modules/estacionamento/stores/veiculo_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class VeiculoCard extends StatefulWidget {
  final VeiculoStore store;

  VeiculoCard({this.store});

  @override
  _VeiculoCardState createState() => _VeiculoCardState();
}

class _VeiculoCardState extends State<VeiculoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      height: 150,
      width: double.maxFinite,
      child: Card(
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
                    child: Image.network(
                      widget.store.veiculo.imagem,
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      widget.store.veiculo.decricao,
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
                                      widget.store.veiculo.placa.toUpperCase(),
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
                    child: Observer(builder: (_) {
                      return RaisedButton(
                        color: widget.store.corBotaoEntradaSaida,
                        onPressed: () async {
                          widget.store.carregando = true;
                          await Future.delayed(Duration(seconds: 2))
                              .then((onValue) => true);

                          widget.store.clickBotaoEntradaSaida();
                          widget.store.carregando = false;
                        },
                        child: Observer(builder: (_) {
                          return widget.store.carregando
                              ? CircularProgressIndicator(
                                  backgroundColor: Colors.white,
                                  valueColor: new AlwaysStoppedAnimation<Color>(
                                      widget.store.corBotaoEntradaSaida),
                                )
                              : Text(
                                  widget.store.labelBotaoEntradaSaida,
                                  style: TextStyle(color: Colors.white),
                                );
                        }),
                      );
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
