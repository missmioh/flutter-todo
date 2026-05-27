import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task_model.dart';
import 'package:flutter_todo/models/user_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Task> tasks = <Task>[];
  User user = User("Milly");

// color scheme that stays consistent throughout the application

  Color colorLvl1 = Colors.amber.shade100;
  Color colorLvl2 = Colors.amber.shade200;
  Color colorLvl3 = Colors.amber.shade300;
  Color colorLvl4 = Colors.amber.shade600;

// bottom sheet that stays consistent throughout the application

  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: ((context) {
        return bottomSheetView;
      }));
  }
}

// tasks are gonna be stored here
// will retrieve user info in the future