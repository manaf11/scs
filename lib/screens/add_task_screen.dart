import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_list_model.dart';

class AddTaskScreen extends StatelessWidget {
  TextEditingController cot = TextEditingController();
  FocusNode fn = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ADD", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,
              fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autofocus: true,
                focusNode: fn,
                controller: cot,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                if(cot.text.length>0){
                  Provider.of<TaskListModel>(context, listen: false).addTask(cot.text);
                  Navigator.of(context).pop();
                }
                else{
                  fn.requestFocus();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please insert  text name")));
                }
              }, child: Text("Add a task")),
            )
          ],
        ),
      ),
    );
  }
}
