import 'package:fatec_estacionamento/app/repositories/interfaces/comunicado_repository_interface.dart';
import 'package:fatec_estacionamento/app/store/comunicado_store.dart';
import 'package:mobx/mobx.dart';

part 'comunicado_controller.g.dart';

class ComunicadoController = _ComunicadoControllerBase
    with _$ComunicadoController;

abstract class _ComunicadoControllerBase with Store {
  @observable
  List<ComunicadoStore> comunicados = List<ComunicadoStore>();
  IComunicadoRepository repositorio;

  _ComunicadoControllerBase({this.repositorio});

  int index;

  ComunicadoStore get comunicado => comunicados[index];

  @action
  getComunicados() async {
    comunicados = await this.repositorio.get();
    return comunicados;
  }
}
