import 'package:flutter/foundation.dart';
import '../models/task.dart';
import 'dart:collection';
// import 'package:provider/provider.dart';

class TaskData extends ChangeNotifier{
  // ignore: always_specify_types
  List<Task> _tasks = [
    Task(name: 'Buy Choco'),
    Task(name: 'Buy chips'),
    Task(name: 'Buy Chocochips'),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    // ignore: always_specify_types
    final task=Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}