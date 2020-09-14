import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool completedState;
  TaskTile({this.taskName, this.completedState});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskName),
      trailing: Checkbox(
        value: completedState,
        onChanged: null,
      ),
    );
  }
}
