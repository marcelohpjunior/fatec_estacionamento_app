import 'package:fatec_estacionamento/app/modules/shared/widgets/custom-colors.dart';
import 'package:flutter/material.dart';

class ComunicadoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            print("clicou");
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
                        child: Image.asset(
                          'assets/images/logo.png',
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
                                          "Lorem ipsum dolor sit amet LorLorem ",
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
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In suscipit est eu augue luctus eleif Lorem ipsum dolor sit amet Lor Lorem ipsum dolor sit amet Lor ",
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
