import 'package:fatec_estacionamento/app/modules/comunicado/components/comunicado_card_widget.dart';
import 'package:fatec_estacionamento/app/modules/estacionamento/components/veiculo_card_widget.dart';
import 'package:fatec_estacionamento/app/modules/shared/widgets/custom-colors.dart';
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
      body: FutureBuilder(
        future: controller.getComunicados(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext ctxt, int index) {
                if (snapshot.data.length == 0) {
                  return Center(
                    child: Text(
                      "Nenhum comunicado encontrado",
                      style: TextStyle(
                          color: CustomColors.azulEscuro,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  );
                }

                return ComunicadoCard();
              });
        },
      ),
      // body: Container(
      //   child: ListView.builder(
      //     padding: EdgeInsets.only(top: 10),
      //     itemCount: 20,
      //     itemBuilder: (context, index) {
      //       return ComunicadoCard();
      //     },
      //   ),
      // ),
    );
  }
}
