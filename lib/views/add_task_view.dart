import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo/view_models/app_view_model.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder:(context, viewModel, child) {
      return SizedBox(
        height: 60,
        width: 60,
        child: ElevatedButton(
          onPressed: () {
            viewModel.bottomSheetBuilder(
              Container(height: 100, color: viewModel.colorLvl2), context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: viewModel.colorLvl4,
            foregroundColor: viewModel.colorLvl1,
            padding: EdgeInsets.all(5.0),
          ),
          child: Icon(
            Icons.add,
            size: 30,
          )),
      );
    });
  }
}