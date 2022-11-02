import 'package:flutter/material.dart';

import './task_model.dart';

class TaskListModel extends ChangeNotifier{
  List<TaskModel> tasks = [
    TaskModel(taskName: "Make flutter app", taskStatus: false),
    TaskModel(taskName: "Make dart app", taskStatus: true),
  ];

  addTask(String taskName){
    var task = new TaskModel(taskName: taskName, taskStatus: false);
    tasks.add(task);
    notifyListeners();
  }

  deleteTask(TaskModel task){
    tasks.remove(task);
    notifyListeners();
  }

  editTask(TaskModel task){
    // var tmp = task;
    // var index = tasks.indexOf(tmp);
    // tasks.remove(task);
    // tasks.insert(index, tmp);
    tasks = tasks.map<TaskModel>((e) {
      if(e == task) {
        e.changeStatus();
        return e;
      } else
        return e;
    }).toList();
    notifyListeners();
  }
}