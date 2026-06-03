import 'package:flutter/material.dart';
import 'package:flutter_todo/view_models/app_view_model.dart';
import 'package:provider/provider.dart';

class AddTaskBottomSheetView extends StatelessWidget {
  const AddTaskBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();

    return Consumer<AppViewModel>(builder:(context, viewModel, child) {
      return Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          height: 100,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 5),
              filled: true,
              fillColor: viewModel.colorLvl1,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            cursorColor: viewModel.colorLvl4,
            controller: entryController,
            autofocus: true,
            autocorrect: false,
            style: TextStyle(
              color: viewModel.colorLvl4,
              fontWeight: FontWeight.w700,
          )),
      ));
    },);
  }
}