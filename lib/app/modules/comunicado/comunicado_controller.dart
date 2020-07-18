import 'package:fatec_estacionamento/app/models/comunicado_model.dart';
import 'package:fatec_estacionamento/app/repositories/interfaces/comunicado_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'comunicado_controller.g.dart';

class ComunicadoController = _ComunicadoControllerBase
    with _$ComunicadoController;

abstract class _ComunicadoControllerBase with Store {
  @observable
  List<ComunicadoModel> comunicados = List<ComunicadoModel>();
  IComunicadoRepository repositorio;

  _ComunicadoControllerBase({this.repositorio});

  @action
  getComunicados() async {
    comunicados = await this.repositorio.get();
    return comunicados;
  }
}
