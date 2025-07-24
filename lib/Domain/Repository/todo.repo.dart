import 'package:to_do_app/Domain/Models/todo.dart';

abstract class ToDoRepository {
  //Show all entries
  Future<List<ToDo>> getAllEntries();

  //Add New entry
  Future<void> addEntry(ToDo todo);

  //Update entry
  Future<void> updateEntry(ToDo todo);

  //delete entry
  Future<void> deleteEntry(ToDo todo);
}
