import 'package:fatec_estacionamento/app/modules/login/login_controller.dart';
import 'package:fatec_estacionamento/app/modules/shared/widgets/custom-button.dart';
import 'package:fatec_estacionamento/app/modules/shared/widgets/custom-colors.dart';
import 'package:fatec_estacionamento/app/modules/shared/widgets/custom-textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
                color: Colors.white,
                child: SafeArea(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Image.asset(
                              "assets/images/logo.png",
                            ),
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CustomTextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    labelText: "RA",
                                    obscureText: false,
                                    borderColor: CustomColors.azulEscuro,
                                    cursorColor: Colors.blueGrey,
                                    labelColor: CustomColors.vinho,
                                    iconColor: Colors.blueGrey,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "E-mail inválido";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CustomTextFormField(
                                    //controller: controller,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: false,
                                    labelText: "Senha",
                                    borderColor: CustomColors.azulEscuro,
                                    cursorColor: Colors.blueGrey,
                                    labelColor: CustomColors.vinho,
                                    iconColor: Colors.blueGrey,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Senha inválido";
                                      }
                                      return null;
                                    },
                                  ),
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
                                Navigator.pushReplacementNamed(
                                    context, '/home');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
          ),
          SafeArea(
            top: false,
            child: SizedBox(
              height: 40,
              width: double.maxFinite,
              child: FlatButton(
                color: CustomColors.azulEscuro,
                child: Text(
                  "Não possui cadastro? Clique aqui",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/cadastro');
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
