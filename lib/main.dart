import 'package:flutter/material.dart';
import 'package:flutter_todo/view_models/app_view_model.dart';
import 'package:flutter_todo/views/task_page.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(ChangeNotifierProvider(create: (context) => AppViewModel(), child: const AddictiveTasks()));
}

class AddictiveTasks extends StatelessWidget {
  const AddictiveTasks ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskPage(),
    );
  }
}