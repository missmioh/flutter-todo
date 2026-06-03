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
          color: viewModel.colorLvl2,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          child: ListView.separated(
            // aligns all items away from screen borders
            padding: EdgeInsets.all(15),
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) {
                  viewModel.deleteTask(index);
                },
                background: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: viewModel.colorAccent1,
                    borderRadius: BorderRadius.circular(20)),
                  child: Center(child: Icon(Icons.delete, color: viewModel.colorAccent2),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: viewModel.colorLvl1,
                    borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                        side: BorderSide(width: 2, color: viewModel.colorLvl3),
                        checkColor: viewModel.colorLvl5,
                        activeColor: viewModel.colorLvl2,
                        value: viewModel.getTaskValue(index),
                        onChanged: (value) {
                          viewModel.setTaskValue(index, value!);
                        }
                      ),
                      title: Text(
                        viewModel.getTaskTitle(index),
                        style: TextStyle(
                          color: viewModel.colorLvl5,
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          ),
                      ),),
                ),
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