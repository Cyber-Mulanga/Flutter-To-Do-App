class ToDo {
  final int id;
  final String text;
  final bool isCompleted;

  ToDo({required this.id, required this.text, required this.isCompleted});


  ToDo completedEntry(){
    return ToDo(
      id: id,
      text: text,
      isCompleted: !isCompleted
    );
  }

}