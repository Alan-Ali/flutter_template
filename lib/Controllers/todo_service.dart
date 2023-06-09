import "dart:convert";
import "../models/todo.dart";
import 'ControllerDirectors/dependencies.dart';
import "./ControllerDirectors/rest_service.dart";

class TodoDataService {
  final rest = service<RestService>();

  Future<List<Todo>> getTodoList() async {
    final response = await rest.get("todos");

    List<Todo>? list =
        response.map((element) => Todo.fromJson(element)).toList();

    return list;
  }

  Future<List<Todo>> getUserTodoList(int? userId) async {
      final todoList = await getTodoList();
      List<Todo>? filteredTodo = todoList.where((element) => element.userIdd == userId).toList();
      
       return filteredTodo;
      
  }

  // Future<Todo> updateTodoList(int? id, Todo? todo) async {
  //   final response =  await rest.patch("todos/$id", data: todo!);
  //
  //   return Todo.fromJson(response);
  // }
  //
  // Future createTodo(Todo? todo) async {
  //       await rest.post("todos/", todo: todo!);
  // }
  //
  // Future deleteTodo(int id) async {
  //   await rest.delete(id,"todos/$id");
  // }

}
