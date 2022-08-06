import 'package:flutter_boilerplate/data/todo_api/model/todo.dart';
import 'package:flutter_boilerplate/data/todo_api/model/api_response.dart';
import 'package:flutter_boilerplate/data/todo_api/todo_api.dart';

class FirebaseTodoApi implements TodoApi {
  @override
  Future<ApiResponse<Todo>> getTodo(int id) {
    throw UnimplementedError();
  }

  @override
  Future<ApiResponse<List<Todo>>> getTodos() {
    throw UnimplementedError();
  }
}
