import 'package:flutter/material.dart';
import 'package:flutter_todo/view_models/app_view_model.dart';
import 'package:provider/provider.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
      return Container(
        decoration: BoxDecoration(color: viewModel.colorLvl3, borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        );
      },
    );
  }
}