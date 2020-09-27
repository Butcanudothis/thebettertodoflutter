import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:flutter_todo/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          padding: EdgeInsets.fromLTRB(20, 25, 20, 10),
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkboxCallback: (checkboxState) {
                  taskData.updateTask(task);
                },
                deletionCallback: () {
                  taskData.deleteTask(task);
                });
          },
          itemCount: taskData.countTasks,
        );
      },
    );
  }
}
