import 'package:fatec_estacionamento/app/modules/shared/widgets/custom-colors.dart';
import 'package:fatec_estacionamento/app/store/comunicado_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ComunicadoCard extends StatelessWidget {
  final ComunicadoStore store;
  ComunicadoCard({this.store});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Modular.to.pushNamed('/home/comunicado/detalhe',
                arguments: this.store.comunicado);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            height: 100,
            width: double.maxFinite,
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
                        child: store.comunicado.imagem != null
                            ? Image.network(
                                store.comunicado.imagem,
                                fit: BoxFit.fill,
                              )
                            : Center(
                                child: CircularProgressIndicator(),
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
                                          store.comunicado.titulo,
                                          maxLines: 2,
                                          style: TextStyle(
                                              color: CustomColors.azulEscuro,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
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
                                          store.comunicado.texto,
                                          maxLines: 3,
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
              ],
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
