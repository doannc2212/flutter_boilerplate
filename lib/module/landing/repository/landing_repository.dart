import 'package:flutter_boilerplate/common/interface/token_persistor.dart';

abstract class LandingRepositoryProtocol {}

class LandingRepository implements LandingRepositoryProtocol {
  LandingRepository({
    required this.tokenPersistor,
    // required this.authenticationService,
  });

  final TokenPersistor tokenPersistor;
  // final AuthenticationServiceProtocol authenticationService;
}
