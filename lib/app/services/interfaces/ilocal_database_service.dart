abstract class ILocalDataBaseService {
  Future get({String key});
  Future put(String key, value);
  Future delete(String key);
}
