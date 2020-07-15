import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'comunicado_controller.dart';

class ComunicadoPage extends StatefulWidget {
  final String title;
  const ComunicadoPage({Key key, this.title = "Comunicados"}) : super(key: key);

  @override
  _ComunicadoPageState createState() => _ComunicadoPageState();
}

class _ComunicadoPageState
    extends ModularState<ComunicadoPage, ComunicadoController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
