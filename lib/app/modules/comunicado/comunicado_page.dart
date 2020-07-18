import 'package:fatec_estacionamento/app/modules/comunicado/components/comunicado_card_widget.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.only(top: 10),
          itemCount: 20,
          itemBuilder: (context, index) {
            return ComunicadoCard();
          },
        ),
      ),
    );
  }
}
