import 'estacionamento_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'estacionamento_page.dart';

class EstacionamentoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => EstacionamentoController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => EstacionamentoPage()),
      ];

  static Inject get to => Inject<EstacionamentoModule>.of();
}
