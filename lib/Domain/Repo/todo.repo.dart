import 'package:to_do_app/Domain/Models/todo.dart';

abstract class ToDoRepo {
  //Show Existing Entries
  Future<List<ToDo>> getAllEntry();

  //Update Entry
  Future<void> updateEntry(ToDo todo);

  //Add entry
  Future<void> addEntry(ToDo todo);

  //Delete Entry
  Future<void> deleteEntry(ToDo todo) ;
}
