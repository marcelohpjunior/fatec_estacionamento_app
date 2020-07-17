import 'package:fatec_estacionamento/app/services/interfaces/ilocal_database_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesLocalDbService extends Disposable
    implements ILocalDataBaseService {
  SharedPreferences sharedPreferences;

  @override
  void dispose() {}

  @override
  Future delete(key) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(key);
  }

  @override
  Future get({key}) async {
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.get(key);
  }

  @override
  Future put(key, value) async {
    sharedPreferences = await SharedPreferences.getInstance();
    if (value is bool) {
      sharedPreferences.setBool(key, value);
    } else if (value is String) {
      sharedPreferences.setString(key, value);
    } else if (value is int) {
      sharedPreferences.setInt(key, value);
    } else if (value is double) {
      sharedPreferences.setDouble(key, value);
    }
  }
}
