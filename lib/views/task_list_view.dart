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
        decoration: BoxDecoration(
          color: viewModel.colorLvl3,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                width: 50,
                color: viewModel.colorLvl1,
                );
            },
            separatorBuilder: (context, index) {
            // determines how far apart the items are
             return SizedBox(height: 15);
          }, itemCount: viewModel.numTasks)
        );
      },
    );
  }
}