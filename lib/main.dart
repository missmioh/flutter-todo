import 'package:flutter/material.dart';
import 'package:flutter_todo/views/task_page.dart';

void main() {

  runApp( AddictiveTasks() );
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