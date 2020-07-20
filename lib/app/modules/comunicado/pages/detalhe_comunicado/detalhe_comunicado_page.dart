import 'package:fatec_estacionamento/app/modules/shared/models/comunicado_model.dart';
import 'package:fatec_estacionamento/app/modules/shared/widgets/custom-colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'detalhe_comunicado_controller.dart';

class DetalheComunicadoPage extends StatefulWidget {
  final String title;
  final ComunicadoModel model;
  const DetalheComunicadoPage({Key key, this.title = "Comunicado", this.model})
      : super(key: key);

  @override
  _DetalheComunicadoPageState createState() => _DetalheComunicadoPageState();
}

class _DetalheComunicadoPageState
    extends ModularState<DetalheComunicadoPage, DetalheComunicadoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.network(
                widget.model.imagem,
                scale: 1.2,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Text(
                  widget.model.titulo,
                  style: TextStyle(
                      color: CustomColors.azulEscuro,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 30),
              child: Text(
                widget.model.texto,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
