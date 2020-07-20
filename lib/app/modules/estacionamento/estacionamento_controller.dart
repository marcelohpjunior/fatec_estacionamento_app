import 'package:fatec_estacionamento/app/modules/estacionamento/stores/veiculo_store.dart';
import 'package:fatec_estacionamento/app/modules/shared/repositories/interfaces/estacionamento_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'estacionamento_controller.g.dart';

class EstacionamentoController = _EstacionamentoControllerBase
    with _$EstacionamentoController;

abstract class _EstacionamentoControllerBase with Store {
  IEstacionamentoRepository repositorio;

  _EstacionamentoControllerBase({this.repositorio});

  @observable
  List<VeiculoStore> veiculos = List<VeiculoStore>();

  @action
  getVeiculos() async {
    veiculos = await repositorio.get();
    return veiculos;
  }
}
