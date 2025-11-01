import 'package:flutter_todo_app/Domain/Entitites/todo.dart';

abstract class ToDoRepository {
  // Method to show all list of todos
  Future<List<ToDo>> getAllEntries();

  // Method to add a todo
  Future<void> addToDo(ToDo todo);

  // Method to update todo
  Future<void> updateToDo(ToDo todo);

  // Method to delete todo
  Future<void> deleteToDo(ToDo todo);
}
