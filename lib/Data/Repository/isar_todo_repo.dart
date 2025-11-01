import 'package:flutter_todo_app/Data/Models/isar_todo.dart';
import 'package:flutter_todo_app/Domain/Entities/todo.dart';
import 'package:flutter_todo_app/Domain/Repository/todo.repo.dart';
import 'package:isar/isar.dart';

class IsarToDoRepository implements ToDoRepository {
  final Isar db;

  IsarToDoRepository(this.db);

  @override
  Future<void> addToDo(ToDo todo) async {
    // Convert ToDo Into isar ToDo
    final newToDo = IsarToDo.fromEntity(todo);

    // Save the todo into the isar database
    await db.isarToDos.put(newToDo);
  }

  @override
  Future<List<ToDo>> getAllEntries() async {
    // Show All Isar ToDos From isar database
    final todoList = await db.isarToDos.where().findAll();

    // Turn list into Entity ToDos.
    return todoList.map((todoItems) => todoItems.toEntity()).toList();
  }

  @override
  Future<void> removeToDo(ToDo todo) async {
    //Delete Isar ToDo from database
    await db.isarToDos.delete(todo.id);
  }

  @override
  Future<void> updateToDo(ToDo todo) async{
    // Convert ToDo Entity into isar model
    final newToDo = IsarToDo.fromEntity(todo);

    //Save new ToDo Isar Model to Database
    await db.isarToDos.put(newToDo);
  }
}
