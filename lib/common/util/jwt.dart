import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

Future<bool> validateJWT(String token) async {
  try {
    // Verify a token
    const secret =
        '1e15f067cabd8d5b3215bc62537eff3e9ed2127cad3f6940b1a080d020838354';
    JWT.verify(token, SecretKey(secret));
    // ignore: avoid_catching_errors
  } on Error {
    return false;
  }
  return true;
}
