import 'package:bloc/bloc.dart';
import 'package:flutter_todo_app/Domain/Entities/todo.dart';
import 'package:flutter_todo_app/Domain/Repository/todo.repo.dart';

class ToDoCubit extends Cubit<List<ToDo>> {
  // Reference The Repository
  final ToDoRepository repo;

  ToDoCubit(this.repo) : super([]) {
    //initial State
    loadToDos();
  }

  // Load ToDos
  Future<void> loadToDos() async {
    // fetch todos from local repo
    final todoList = await repo.getAllEntries();

    // reload the state with all todos
    emit(todoList);
  }

  // Add ToDo
  Future<void> addToDo(String title, description) async {
    //Create new todo
    final newToDo = ToDo(
      id: DateTime.now().millisecondsSinceEpoch,
      title: title,
      description: description,
    );

    //add new todo to local repo
    await repo.addToDo(newToDo);

    //reload
    loadToDos();
  }

  // Delete ToDo
  Future<void> deleteToDo(ToDo todo) async {
    //delete todo from local repo
    await repo.removeToDo(todo);
  }

  // Toggle ToDo
  Future<void> toggleToDo(ToDo todo) async {
    //toggle the completion
    final updateToDo = todo.toggleCompleted();

    //update the todo and save to local todo
    await repo.updateToDo(updateToDo);

    //reload
    loadToDos();
  }
}
