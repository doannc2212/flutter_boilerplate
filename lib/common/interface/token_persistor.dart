abstract class TokenPersistor {
  Future<bool> persistToken(String token);
  Future<bool> deleteToken();
  Future<bool> hasToken();
  Future<String?> fetchToken();
  // Future<bool> wipe();
}
