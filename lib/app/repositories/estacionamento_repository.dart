import 'package:dio/native_imp.dart';
import 'interfaces/estacionamento_repository_interface.dart';

class EstacionamentoRepository implements IEstacionamentoRepository {
  final DioForNative dio;

  EstacionamentoRepository(this.dio);

  Future get() async {
    final response = await dio.get('');
    return response.data['veiculos'];
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
