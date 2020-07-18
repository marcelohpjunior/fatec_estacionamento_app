import 'package:fatec_estacionamento/app/modules/comunicado/comunicado_module.dart';
import 'package:fatec_estacionamento/app/modules/estacionamento/estacionamento_module.dart';
import 'package:fatec_estacionamento/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fatec_estacionamento/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<PageController>())),
        Bind((i) => PageController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router('/estacionamento', module: EstacionamentoModule()),
        Router('/comunicado', module: ComunicadoModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
