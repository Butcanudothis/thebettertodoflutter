import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(33, 33, 33, 100.0),
      child: Container(
        padding: EdgeInsets.fromLTRB(35, 10, 35, 60),
        decoration: BoxDecoration(
          color: Colors.white,
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
                  color: Colors.orangeAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            FlatButton(
              onPressed: () {},
              color: Colors.orangeAccent,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
