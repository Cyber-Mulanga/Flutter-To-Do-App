import 'package:flutter_todo_app/Data/Models/todo_isar.dart';
import 'package:flutter_todo_app/Domain/Entitites/todo.dart';
import 'package:flutter_todo_app/Domain/Repository/todo_repo.dart';
import 'package:isar/isar.dart';

class IsarToDoRepository implements ToDoRepository {
  final Isar db;

  IsarToDoRepository(this.db);

  @override
  Future<List<ToDo>> getAllEntries() async {
    //fetch all the todos from isar database
    final todoList = await db.isarToDos.where().findAll();

    //return a map of todoList
    return todoList.map((todoItems) => todoItems.toEntity()).toList();
  }

  @override
  Future<void> addToDo(ToDo todo) async {
    //create a new todo
    final newToDo = IsarToDo.fromEntity(todo);

    //add new todo into isar databse
    await db.isarToDos.put(newToDo);
  }

  @override
  Future<void> deleteToDo(ToDo todo) async {
    //delete todo with id
    await db.isarToDos.delete(todo.id);
  }

  @override
  Future<void> updateToDo(ToDo todo) async {
    //create a new todo
    final newToDo = IsarToDo.fromEntity(todo);

    //add updated todo to isar database
    await db.isarToDos.put(newToDo);
  }
}
