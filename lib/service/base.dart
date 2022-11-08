import 'package:flutter_boilerplate/common/network/network.dart';

abstract class BaseService {}

class NetworkService extends BaseService {
  NetworkService();

  final Api api = Api();
}
