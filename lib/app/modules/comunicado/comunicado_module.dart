import 'comunicado_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'comunicado_page.dart';

class ComunicadoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ComunicadoController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ComunicadoPage()),
      ];

  static Inject get to => Inject<ComunicadoModule>.of();
}
