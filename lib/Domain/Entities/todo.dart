class ToDo {
  final int id;
  final String title;
  final String description;
  final bool isCompleted;

  ToDo({
    required this.id,
    required this.title,
    required this.description,
    this.isCompleted = false,
  });

  ToDo toggleCompleted(){
    return ToDo(
      id: id,
      title : title,
      description : description,
      isCompleted : !isCompleted
    );
  }
}
