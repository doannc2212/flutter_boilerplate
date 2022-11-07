import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/app/configuration.dart';
import 'package:flutter_boilerplate/common/interface/token_persistor.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveStore with HiveTokenPersistor {
  factory HiveStore() => _instance;
  HiveStore._base();
  static final HiveStore _instance = HiveStore._base();

  static Future<void> init() async {
    if (!Hive.isBoxOpen(appName)) {
      await Hive.initFlutter();
      await Hive.openBox<String>(appName);
    }
  }
}

mixin HiveTokenPersistor implements TokenPersistor {
  // TOKEN
  static const String _token = 'token';

  @override
  Future<bool> deleteToken() async {
    try {
      await Hive.box<String>(appName).delete(_token);
      return true;
    } on Exception {
      debugPrint('Delete token failure');
    }
    return false;
  }

  @override
  Future<bool> persistToken(String token) async {
    try {
      await Hive.box<String>(appName).put(_token, token);
      return true;
    } on Exception {
      debugPrint('Persist token failure');
    }
    return false;
  }

  @override
  Future<bool> hasToken() async {
    try {
      return Hive.box<String>(appName).containsKey(_token);
    } on Exception {
      debugPrint('Something gone wrong');
    }
    return false;
  }

  @override
  Future<String?> fetchToken() async {
    try {
      return Hive.box<String>(appName).get(_token);
    } on Exception {
      debugPrint('Something gone wrong');
    }
    return null;
  }
}
