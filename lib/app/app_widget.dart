import 'package:fatec_estacionamento/app/modules/shared/widgets/custom-colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Fatec Estacionamento',
      theme: ThemeData(
          primaryColor: CustomColors.azulEscuro,
          accentColor: CustomColors.azulEscuro,
          primarySwatch: Colors.blueGrey),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
