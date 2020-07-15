import 'repositories/comunicado_repository.dart';
import 'repositories/interfaces/comunicado_repository_interface.dart';
import 'repositories/estacionamento_repository.dart';
import 'repositories/interfaces/estacionamento_repository_interface.dart';
import 'package:dio/dio.dart';
import 'package:fatec_estacionamento/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:fatec_estacionamento/app/app_widget.dart';
import 'package:fatec_estacionamento/app/modules/home/home_module.dart';

import 'modules/login/login_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind<IComunicadoRepository>((i) => ComunicadoRepository(Dio())),
        Bind<IEstacionamentoRepository>((i) => EstacionamentoRepository(Dio())),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: LoginModule()),
        Router('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
