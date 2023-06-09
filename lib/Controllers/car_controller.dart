// import "dart:convert";
import "../Models/cars.dart";
import "./dependencies.dart";
import "./rest_service.dart";

class CarsController {
  final rest = service<RestService>();

  // static CarsController? _instance;
  //
  // CarsController._();
  //
  // factory CarsController => _instance ??= CarsController._();

  Future<List<Cars>> getCarList() async {
    final response = await rest.get("FlutterTestServlet");

    List<Cars> list =
        response.map((element) => Cars.fromJson(element)).toList();

    return list;
  }

// Future<List<Cars>> getUserCarList(int? userId) async {
//   final todoList = await getCarList();
//   List<Cars>? filteredTodo =
//       todoList.where((element) => element.userIdd == userId).toList();
//
//   return filteredTodo;
// }
//
// Future<Cars> updateTodoList(int? id, Cars? todo) async {
//   final response = await rest.patch("todos/$id", data: todo!);
//
//   return Cars.fromJson(response);
// }
//
// Future createTodo(Cars? todo) async {
//   await rest.post("todos/", todo: todo!);
// }
  //
// Future deleteTodo(int id) async {
//   await rest.delete(id, "todos/$id");
// }
}
