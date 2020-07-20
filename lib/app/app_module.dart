import 'package:fatec_estacionamento/app/app_controller.dart';
import 'package:fatec_estacionamento/app/modules/shared/services/interfaces/ilocal_database_service.dart';
import 'package:fatec_estacionamento/app/modules/shared/services/shared_preferences_local_db_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:fatec_estacionamento/app/app_widget.dart';
import 'package:fatec_estacionamento/app/modules/home/home_module.dart';

import 'modules/login/login_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SharedPreferencesLocalDbService()),
        Bind<ILocalDataBaseService>(
            (i) => i.get<SharedPreferencesLocalDbService>()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers {
    return [
      Router(Modular.initialRoute, module: LoginModule()),
      Router('/home', module: HomeModule()),
    ];
  }

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
