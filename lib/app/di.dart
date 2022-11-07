import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/data/todo_api/todo_api.dart';
import 'package:flutter_boilerplate/data/todo_api/web_server_todo_api.dart';
import 'package:flutter_boilerplate/repository/todo_repository/todo_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt
    ..registerLazySingleton<Dio>(() {
      final options = BaseOptions(
        baseUrl: NetworkConfig.baseUrl,
        connectTimeout: NetworkConfig.connectTimeout,
        receiveTimeout: NetworkConfig.receiveTimeout,
      );
      return Dio(options);
    })
    ..registerLazySingleton<TodoApi>(() {
      final dio = getIt.get<Dio>();

      return WebServerTodoApi(dio: dio);
    })
    ..registerLazySingleton<TodoRepository>(() {
      final todoApi = getIt.get<TodoApi>();

      return TodoRepository(todoApi: todoApi);
    });
}
