import 'package:dio/native_imp.dart';
import 'interfaces/comunicado_repository_interface.dart';

class ComunicadoRepository implements IComunicadoRepository {
  final DioForNative client;

  ComunicadoRepository(this.client);

  Future get() async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
