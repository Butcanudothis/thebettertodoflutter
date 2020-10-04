import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo/models/task_data.dart';
import 'package:flutter_todo/screens/login_screen.dart';
import 'package:flutter_todo/screens/taskscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData(unselectedWidgetColor: Colors.orangeAccent),
        home: LoginScreen(),
      ),
    );
  }
}
