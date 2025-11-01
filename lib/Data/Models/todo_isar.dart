import 'package:flutter_todo_app/Domain/Entitites/todo.dart';
import 'package:isar/isar.dart';

part 'todo_isar.g.dart';

@Collection()
class IsarToDo {
  Id id = Isar.autoIncrement;
  late String title;
  late String description;
  late bool isCompleted;


  ToDo toEntity() {
    return ToDo(
      id: id,
      title: title,
      description: description,
      isCompleted: isCompleted,
    );
  }

 static IsarToDo fromEntity(ToDo todo){
  return IsarToDo()
  ..id = todo.id
  ..title = todo.title
  ..description = todo.description
  ..isCompleted = todo.isCompleted;
 }
}
