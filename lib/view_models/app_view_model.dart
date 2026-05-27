import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task_model.dart';
import 'package:flutter_todo/models/user_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Task> tasks = <Task>[];
  User user = User("Milly");
}

// tasks are gonna be stored here
// will retrieve user info in the future