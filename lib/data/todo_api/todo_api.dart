import 'package:flutter_boilerplate/data/todo_api/model/api_response.dart';
import 'package:flutter_boilerplate/data/todo_api/model/todo.dart';

mixin TodoApi {
  Future<ApiResponse<Todo>> getTodo(int id);

  Future<ApiResponse<List<Todo>>> getTodos();
}
