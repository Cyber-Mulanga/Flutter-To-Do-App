import 'package:to_do_app/Domain/Models/todo.dart';
import 'package:isar/isar.dart';

part 'isar.todo.g.dart';

@Collection()
class IsarToDo {
  Id id = Isar.autoIncrement;
  late String text;
  late bool isCompleted;

  //Convert Model to Domain
  ToDo toDomain() {
    return ToDo(id: id, text: text, isCompleted: isCompleted);
  }

  //Convert Domain to Model
  static IsarToDo fromDomain(ToDo todo) {
    return IsarToDo()
    ..id = todo.id
    ..text = todo.text
    ..isCompleted = todo.isCompleted;
  }
}
