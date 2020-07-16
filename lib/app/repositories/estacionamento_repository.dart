import 'dart:convert';

import 'package:dio/native_imp.dart';
import 'package:fatec_estacionamento/app/models/veiculo_model.dart';
import 'interfaces/estacionamento_repository_interface.dart';

class EstacionamentoRepository implements IEstacionamentoRepository {
  final DioForNative dio;

  EstacionamentoRepository(this.dio);

  Future get() async {
    final response = await dio.get(
        'https://raw.githubusercontent.com/marcelohpjunior/fatec_estacionamento_app/master/lib/app/repositories/mock/estacionamento.json');
    var jsonVeiculo = json.decode(response.data)['veiculos'];

    return veiculofromJson(jsonVeiculo);
  }

  veiculofromJson(var veiculosJson) {
    var veiculos = new List<Veiculo>();
    if (veiculosJson != null) {
      veiculosJson.forEach((v) {
        veiculos.add(new Veiculo.fromJson(v));
      });
      return veiculos;
    }
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
