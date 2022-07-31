import 'package:todo_api/todo_api.dart';

class TodoApi {
  TodoApi({required Dio dio}) : _dio = dio;
  final Dio _dio;

  Future<ApiResponse<Todo>> getTodo(int id) async {
    try {
      final response = await _dio.get('/todos/$id');

      return ApiResponse.success(Todo.fromJson(response.data));
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

  Future<ApiResponse<List<Todo>>> getTodos() async {
    try {
      final response = await _dio.get('/todos');

      var list = response.data as List;
      var dataList =
          List<Todo>.from(list.map((todo) => Todo.fromJson(todo)).toList());

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
