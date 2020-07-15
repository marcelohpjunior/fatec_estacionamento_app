import 'package:mobx/mobx.dart';

part 'comunicado_controller.g.dart';

class ComunicadoController = _ComunicadoControllerBase
    with _$ComunicadoController;

abstract class _ComunicadoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
