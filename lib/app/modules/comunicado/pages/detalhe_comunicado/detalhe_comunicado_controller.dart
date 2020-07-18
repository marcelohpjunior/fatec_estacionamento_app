import 'package:mobx/mobx.dart';

part 'detalhe_comunicado_controller.g.dart';

class DetalheComunicadoController = _DetalheComunicadoControllerBase
    with _$DetalheComunicadoController;

abstract class _DetalheComunicadoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
