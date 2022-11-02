class TaskModel{
  String taskName;
  bool taskStatus;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskModel &&
          runtimeType == other.runtimeType &&
          taskName == other.taskName &&
          taskStatus == other.taskStatus;

  TaskModel({
    required this.taskName,
    required this.taskStatus,
  });

  changeStatus(){
    taskStatus = !taskStatus;
  }
}