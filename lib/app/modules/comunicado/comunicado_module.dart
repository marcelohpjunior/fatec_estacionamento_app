import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:fatec_estacionamento/app/modules/comunicado/pages/detalhe_comunicado/detalhe_comunicado_page.dart';
import 'package:fatec_estacionamento/app/modules/shared/repositories/comunicado_repository.dart';
import 'package:fatec_estacionamento/app/modules/shared/repositories/interfaces/comunicado_repository_interface.dart';

import 'comunicado_controller.dart';
import 'comunicado_page.dart';
import 'pages/detalhe_comunicado/detalhe_comunicado_controller.dart';

class ComunicadoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetalheComunicadoController()),
        Bind((i) =>
            ComunicadoController(repositorio: i.get<IComunicadoRepository>())),
        Bind<IComunicadoRepository>((i) => ComunicadoRepository(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ComunicadoPage()),
        Router('/detalhe',
            child: (_, args) => DetalheComunicadoPage(model: args.data)),
      ];

  static Inject get to => Inject<ComunicadoModule>.of();
}
