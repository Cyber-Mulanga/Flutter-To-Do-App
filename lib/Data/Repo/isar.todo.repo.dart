import 'package:isar/isar.dart';
import 'package:to_do_app/Domain/Models/todo.dart';
import 'package:to_do_app/Domain/Repo/todo.repo.dart';

class IsarToDoRepo implements ToDoRepo {
  final Isar db;

  IsarToDoRepo(this.db);

  @override
  Future<List<ToDo>> getAllEntry() {
    // TODO: implement getAllEntry
    throw UnimplementedError();
  }

  @override
  Future<void> addEntry(ToDo todo) {
    // TODO: implement addEntry
    throw UnimplementedError();
  }

  @override
  Future<void> deleteEntry(ToDo todo) {
    // TODO: implement deleteEntry
    throw UnimplementedError();
  }

  @override
  Future<void> updateEntry(ToDo todo) {
    // TODO: implement updateEntry
    throw UnimplementedError();
  }
}
