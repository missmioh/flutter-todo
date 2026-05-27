import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task_model.dart';
import 'package:flutter_todo/models/user_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Task> tasks = <Task>[];
  User user = User("Milly");

  Color colorLvl1 = Colors.amber.shade100;
  Color colorLvl2 = Colors.amber.shade200;
  Color colorLvl3 = Colors.amber.shade300;
  Color colorLvl4 = Colors.amber.shade600;
}

// tasks are gonna be stored here
// will retrieve user info in the future