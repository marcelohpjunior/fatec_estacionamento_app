import 'package:fatec_estacionamento/app/app_module.dart';
import 'package:fatec_estacionamento/app/modules/login/login_controller.dart';
import 'package:fatec_estacionamento/app/modules/login/login_page.dart';
import 'package:fatec_estacionamento/app/services/interfaces/ilocal_database_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController(
            localDataBaseService: AppModule.to.get<ILocalDataBaseService>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
