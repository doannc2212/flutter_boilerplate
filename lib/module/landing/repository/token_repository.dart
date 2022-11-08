import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter_boilerplate/common/interface/token_persistor.dart';
import 'package:flutter_boilerplate/common/store/store.dart';

abstract class TokenRepositoryProtocol implements TokenPersistor {
  Future<JWT?> verifyToken();
  Future<int> getAccessTokenRemainingTime();
}

class TokenRepository
    with HiveTokenPersistor
    implements TokenRepositoryProtocol {
  @override
  Future<JWT?> verifyToken() async {
    final token = await fetchToken();
    if (token != null) {
      final jwt = JWT.verify(
        token,
        SecretKey(
          '1e15f067cabd8d5b3215bc62537eff3e9ed2127cad3f6940b1a080d020838354',
        ),
      );
      return jwt;
    }
    return null;
  }

  @override
  Future<int> getAccessTokenRemainingTime() async {
    // TODO: implement getAccessTokenRemainingTime
    await verifyToken();
    return 60;
  }
}
