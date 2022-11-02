import 'package:flutter/material.dart';
import 'package:localization/models/task_list_model.dart';
import 'package:localization/screens/add_task_screen.dart';
import 'package:localization/widgets/header_widget.dart';
import 'package:provider/provider.dart';

class TasksListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<TaskListModel>(context);
    print(prov.tasks.length);
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex:2,child: HeaderWidget(taskCount: prov.tasks.length)),
          Expanded(
            flex: 7,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12))),
            child: ListView.builder(itemCount: prov.tasks.length,
                itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onLongPress: ()=>prov.deleteTask(prov.tasks[index]),
                  title: Text(prov.tasks[index].taskName,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    decoration: prov.tasks[index].taskStatus?TextDecoration.lineThrough:TextDecoration.none
                  ),),
                  trailing: Checkbox(
                    value: prov.tasks[index].taskStatus,
                    onChanged: (newStatus){
                      prov.editTask(prov.tasks[index]);
                    },
                  ),
                ),
              );
                }),),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.blue,
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddTaskScreen()));
        },
      ),
    );
  }
}
