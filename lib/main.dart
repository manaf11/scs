
import 'package:flutter/material.dart';
import 'package:localization/models/task_list_model.dart';
import 'package:localization/screens/tasks_list_screen.dart';
import 'package:provider/provider.dart';
// tis is a comment
void main(){
  runApp(
    ChangeNotifierProvider(
      create: (_)=> TaskListModel(),
      child: MyApp(),
    )
  );
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksListScreen(),
    );
  }
}
