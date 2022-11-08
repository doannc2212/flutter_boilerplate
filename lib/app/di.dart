import 'package:flutter_boilerplate/service/user_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerLazySingleton<IUserService>(UserService.new);
  // getIt..registerLazySingleton<IUserService>(UserService.new);
}
