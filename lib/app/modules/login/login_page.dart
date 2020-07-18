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

  @override
  void initState() {
    super.initState();
    controller.carregarLoginLocalDB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
                child: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 30),
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
                                textEditingController:
                                    controller.raEditingController,
                                keyboardType: TextInputType.number,
                                labelText: "RA",
                                obscureText: false,
                                borderColor: CustomColors.azulEscuro,
                                cursorColor: Colors.blueGrey,
                                labelColor: CustomColors.vinho,
                                iconColor: Colors.blueGrey,
                                validator: (value) {
                                  if (value.isEmpty || int.parse(value) <= 0) {
                                    return "RA inválido";
                                  }
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
                                  textEditingController:
                                      controller.senhaEditingController,
                                  controller: controller,
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                  labelText: "Senha",
                                  borderColor: CustomColors.azulEscuro,
                                  cursorColor: Colors.blueGrey,
                                  labelColor: CustomColors.vinho,
                                  iconColor: Colors.blueGrey,
                                  validator: (value) {
                                    if (value.isEmpty ||
                                        value.trim().length <= 0) {
                                      return "Senha inválido";
                                    }
                                    return null;
                                  },
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Observer(builder: (_) {
                              return Switch(
                                  inactiveThumbColor: Colors.blueGrey[50],
                                  value: controller.manterConectado,
                                  onChanged: (value) {
                                    controller.manterConectado = value;
                                  });
                            }),
                            Text(
                              "Lembrar dados de login",
                              style: TextStyle(
                                  color: CustomColors.azulEscuro,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
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
                          if (_formKey.currentState.validate()) {
                            controller.salvarLoginLocalDB();
                            Navigator.pushReplacementNamed(context, '/home');
                          }
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
