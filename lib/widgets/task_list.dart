import 'package:flutter/material.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
      children: [TaskTile(taskName: 'This is a task', completedState: false)],
    );
  }
}
