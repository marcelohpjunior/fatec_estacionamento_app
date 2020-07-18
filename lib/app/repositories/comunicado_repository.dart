import 'dart:convert';

import 'package:dio/native_imp.dart';
import 'package:fatec_estacionamento/app/models/comunicado_model.dart';
import 'interfaces/comunicado_repository_interface.dart';

class ComunicadoRepository implements IComunicadoRepository {
  final DioForNative dio;

  ComunicadoRepository(this.dio);

  Future get() async {
    final response = await dio.get(
        'https://raw.githubusercontent.com/marcelohpjunior/fatec_estacionamento_app/dev/assets/mock/estacionamento.json');

    if (response.statusCode == 200) {
      var jsonVeiculoModel = json.decode(response.data);

      return veiculofromJson(jsonVeiculoModel);
    }
    return null;
  }

  veiculofromJson(var comunicadosJson) {
    var comunicados = new List<ComunicadoModel>();
    if (comunicadosJson != null) {
      comunicadosJson.forEach((v) {
        comunicados.add(ComunicadoModel.fromJson(v));
      });
      return comunicados;
    }
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
