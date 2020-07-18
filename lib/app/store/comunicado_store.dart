import 'package:mobx/mobx.dart';
import 'package:fatec_estacionamento/app/models/comunicado_model.dart';

part 'comunicado_store.g.dart';

class ComunicadoStore = _ComunicadoStoreBase with _$ComunicadoStore;

abstract class _ComunicadoStoreBase with Store {
  @observable
  ComunicadoModel comunicado;
}
