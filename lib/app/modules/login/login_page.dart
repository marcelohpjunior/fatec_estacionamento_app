import 'package:fatec_estacionamento/app/modules/login/login_controller.dart';
import 'package:fatec_estacionamento/app/modules/shared/widgets/custom-button.dart';
import 'package:fatec_estacionamento/app/modules/shared/widgets/custom-colors.dart';
import 'package:fatec_estacionamento/app/modules/shared/widgets/custom-textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  final _formKey = GlobalKey<FormState>();
  LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
                //color: Color.fromRGBO(14, 14, 14, 1),
                child: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        // width: 100,
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Image.asset(
                          "assets/images/logo3.png",
                          scale: 1.2,
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: CustomTextFormField(
                                keyboardType: TextInputType.number,
                                labelText: "RA",
                                obscureText: false,
                                borderColor: CustomColors.azulEscuro,
                                cursorColor: Colors.blueGrey,
                                labelColor: CustomColors.vinho,
                                iconColor: Colors.blueGrey,
                                validator: (value) {
                                  //   if (value.isEmpty) {
                                  //     return "RA inválido";
                                  //   }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Observer(builder: (_) {
                                return CustomTextFormField(
                                  controller: controller,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  labelText: "Senha",
                                  borderColor: CustomColors.azulEscuro,
                                  cursorColor: Colors.blueGrey,
                                  labelColor: CustomColors.vinho,
                                  iconColor: Colors.blueGrey,
                                  validator: (value) {
                                    // if (value.isEmpty) {
                                    //   return "Senha inválido";
                                    // }
                                    return null;
                                  },
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                print("clicou esqueceu");
                              },
                              child: Text(
                                "Esqueci minha senha",
                                style: TextStyle(
                                    color: CustomColors.vinho,
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomButtom(
                        color: CustomColors.vinho,
                        text: Text(
                          "Entrar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState.validate())
                            Navigator.pushReplacementNamed(context, '/home');
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
