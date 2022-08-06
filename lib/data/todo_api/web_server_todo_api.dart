import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/data/todo_api/model/model.dart';
import 'package:flutter_boilerplate/data/todo_api/todo_api.dart';

class WebServerTodoApi implements TodoApi {
  WebServerTodoApi({required Dio dio}) : _dio = dio;
  final Dio _dio;

  @override
  Future<ApiResponse<Todo>> getTodo(int id) async {
    try {
      final response = await _dio.get<dynamic>('/todos/$id');

      if (response.data == null) throw Exception('Response data is null');
      return ApiResponse.success(
        Todo.fromJson(response.data! as Map<String, dynamic>),
      );
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        return const ApiResponse.error(NetworkException.unauthorized());
      } else if (e.response?.statusCode == 404) {
        return const ApiResponse.error(NetworkException.notFound());
      } else {
        return ApiResponse.error(NetworkException.error(e.message));
      }
    }
  }

  @override
  Future<ApiResponse<List<Todo>>> getTodos() async {
    try {
      final response = await _dio.get<dynamic>('/todos');

      final list = response.data as List<dynamic>;

      final dataList = List<Todo>.from(
        list
            .map(
              (e) => Todo.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      );

      return ApiResponse.success(dataList);
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        return const ApiResponse.error(NetworkException.unauthorized());
      } else if (e.response?.statusCode == 404) {
        return const ApiResponse.error(NetworkException.notFound());
      } else {
        return ApiResponse.error(NetworkException.error(e.message));
      }
    }
  }
}
