import 'package:flutter_todo_app/Domain/Entities/todo.dart';

abstract class ToDoRepository {
  // Show a List of All ToDos
  Future<List<ToDo>> getAllEntries();

  // Add a new ToDo
  Future<void> addToDo(ToDo todo);

  // Update a ToDo
  Future<void> updateToDo(ToDo todo);

  // Remove a ToDo
  Future<void> removeToDo(ToDo todo);
}
