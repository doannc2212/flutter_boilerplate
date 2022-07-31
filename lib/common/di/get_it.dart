import 'package:flutter_boilerplate/common/constants/constants.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_repository/todo_repository.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt
    ..registerLazySingleton<Dio>(() {
      final options = BaseOptions(
        baseUrl: networkUrl,
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
      );
      return Dio(options);
    })
    ..registerLazySingleton<TodoApi>(() {
      final dio = getIt.get<Dio>();

      return TodoApi(dio: dio);
    })
    ..registerLazySingleton<TodoRepository>(() {
      final todoApi = getIt.get<TodoApi>();

      return TodoRepository(todoApi: todoApi);
    });
}
