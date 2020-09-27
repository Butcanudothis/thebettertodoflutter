import 'package:flutter/material.dart';
import 'package:flutter_todo/screens/taskscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Data(),
      child: MaterialApp(
        theme: ThemeData(unselectedWidgetColor: Colors.orangeAccent),
        home: TasksScreen(),
      ),
    );
  }
}
