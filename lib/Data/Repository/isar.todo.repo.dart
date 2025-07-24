import 'package:isar/isar.dart';
import 'package:to_do_app/Data/Models/isar.todo.dart';
import 'package:to_do_app/Domain/Models/todo.dart';
import 'package:to_do_app/Domain/Repository/todo.repo.dart';

class IsarToDoRepo implements ToDoRepository {
  final Isar db;

  IsarToDoRepo(this.db);

  @override
  Future<List<ToDo>> getAllEntries() async {
    //Show all ToDo entries
    final todos = await db.isarToDos.where().findAll();

    //Take all ToDos and convert to Domain
    return todos.map((IsarToDo) => IsarToDo.toDomain()).toList();
  }

  @override
  Future<void> deleteEntry(ToDo todo) async {
    await db.writeTxn(() => db.isarToDos.delete(todo.id));
  }

  @override
  Future<void> updateEntry(ToDo todo) {
    //Convert ToDo into IsarToDo
    final todoIsar = IsarToDo.fromDomain(todo);

    //Write it into your Isar databse
    return db.writeTxn(() => db.isarToDos.put(todoIsar));
  }

  @override
  Future<void> addEntry(ToDo todo) {
    //Convert ToDo into isar ToDo
    final todoIsar = IsarToDo.fromDomain(todo);

    //Store this date into our database
    return db.writeTxn(() => db.isarToDos.put(todoIsar));
  }
}
