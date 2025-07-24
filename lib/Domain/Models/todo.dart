class ToDo {
  final int id;
  final String text;
  final bool isComplete;

  ToDo({required this.id, required this.text, this.isComplete = false});

  ToDo completedEntry() {
    return ToDo(
      id: id,
      text: text,
      isComplete: !isComplete,
    );
  }
}
