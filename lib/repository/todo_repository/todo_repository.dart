import 'package:flutter_boilerplate/data/todo_api/model/model.dart';
import 'package:flutter_boilerplate/data/todo_api/todo_api.dart';

class TodoRepository {
  TodoRepository({required TodoApi todoApi}) : _todoApi = todoApi;

  final TodoApi _todoApi;

  Future<ApiResponse<Todo>> getTodo(int id) async {
    return _todoApi.getTodo(id);
  }

  Future<ApiResponse<List<Todo>>> getTodos() async {
    return _todoApi.getTodos();
  }
}
