import 'package:fatec_estacionamento/app/modules/shared/models/comunicado_model.dart';
import 'package:mobx/mobx.dart';

part 'comunicado_store.g.dart';

class ComunicadoStore = _ComunicadoStoreBase with _$ComunicadoStore;

abstract class _ComunicadoStoreBase with Store {
  @observable
  ComunicadoModel comunicado;
}
