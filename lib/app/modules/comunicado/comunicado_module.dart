import 'package:fatec_estacionamento/app/repositories/comunicado_repository.dart';
import 'package:fatec_estacionamento/app/repositories/interfaces/comunicado_repository_interface.dart';
import 'comunicado_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'comunicado_page.dart';

class ComunicadoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ComunicadoController()),
        Bind<IComunicadoRepository>((i) => ComunicadoRepository(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ComunicadoPage()),
      ];

  static Inject get to => Inject<ComunicadoModule>.of();
}
