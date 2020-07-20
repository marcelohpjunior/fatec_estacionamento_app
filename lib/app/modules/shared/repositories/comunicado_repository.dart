import 'dart:convert';
import 'package:dio/native_imp.dart';
import 'package:fatec_estacionamento/app/modules/comunicado/stores/comunicado_store.dart';
import 'package:fatec_estacionamento/app/modules/shared/models/comunicado_model.dart';
import 'interfaces/comunicado_repository_interface.dart';

class ComunicadoRepository implements IComunicadoRepository {
  final DioForNative dio;

  ComunicadoRepository(this.dio);

  Future get() async {
    final response = await dio.get(
        'https://raw.githubusercontent.com/marcelohpjunior/fatec_estacionamento_app/dev/assets/mock/comunicados.json');

    if (response.statusCode == 200) {
      var jsonComunicadoModel = json.decode(response.data);

      return comunicadofromJson(jsonComunicadoModel);
    }
    return null;
  }

  comunicadofromJson(var comunicadosJson) {
    var comunicados = new List<ComunicadoStore>();
    if (comunicadosJson != null) {
      comunicadosJson.forEach((v) {
        var model = new ComunicadoModel.fromJson(v);
        var store = new ComunicadoStore();
        store.comunicado = model;
        comunicados.add(store);
      });
      return comunicados;
    }
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
