import 'dart:convert';

import 'package:dio/native_imp.dart';
import 'package:fatec_estacionamento/app/models/veiculo_model.dart';
import 'package:fatec_estacionamento/app/modules/estacionamento/store/veiculo_store.dart';
import 'interfaces/estacionamento_repository_interface.dart';

class EstacionamentoRepository implements IEstacionamentoRepository {
  final DioForNative dio;

  EstacionamentoRepository(this.dio);

  Future get() async {
    final response = await dio.get(
        'https://raw.githubusercontent.com/marcelohpjunior/fatec_estacionamento_app/dev/lib/app/repositories/mock/estacionamento.json');

    if (response.statusCode == 200) {
      var jsonVeiculoModel = json.decode(response.data)['veiculos'];

      return veiculofromJson(jsonVeiculoModel);
    }
    return null;
  }

  veiculofromJson(var veiculosJson) {
    var veiculos = new List<VeiculoStore>();
    if (veiculosJson != null) {
      veiculosJson.forEach((v) {
        var model = new VeiculoModel.fromJson(v);
        var store = new VeiculoStore();
        store.veiculo = model;
        veiculos.add(store);
      });
      return veiculos;
    }
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
