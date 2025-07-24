import 'package:isar/isar.dart';
import 'package:to_do_app/Domain/Models/todo.dart';

part 'isar.todo.g.dart';

@Collection()
class IsarToDo {
  Id id = Isar.autoIncrement;
  late String text;
  bool isComplete = false;

  //Convert Model to Domain
  ToDo toDomain() {
    return ToDo(
      id: id,
      text: text,
      isComplete: isComplete,
    );
  }

  //Convert from Domain to Model
  static IsarToDo fromDomain(ToDo todo){
    return IsarToDo()
    ..id = todo.id
    ..text = todo.text
    ..isComplete = todo.isComplete;
  }
}
