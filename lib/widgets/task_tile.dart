import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String taskName;

  TaskTile({this.taskName});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool completedState = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.taskName,
        style: TextStyle(
            decoration: completedState ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkboxState: completedState,
        toggleCheckboxState: (bool checkboxState) {
          setState(() {
            completedState = checkboxState;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;
  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
