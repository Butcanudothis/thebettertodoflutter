import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  //final Function addTaskCallback;

  //AddTaskScreen({this.addTaskCallback});
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xFF101010),
      child: Container(
        padding: EdgeInsets.fromLTRB(35, 10, 35, 60),
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blueGrey.shade900,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700),
            ),
            TextField(
              onChanged: (newText) {
                newTaskTitle = newText;
              },
              textAlign: TextAlign.center,
              autofocus: true,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                //addTaskCallback(newTaskTitle);
                Navigator.pop(context);
              },
              color: Colors.blueGrey.shade900,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.orangeAccent, fontSize: 25.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
