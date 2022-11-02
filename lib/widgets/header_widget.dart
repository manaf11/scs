import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
   HeaderWidget({Key? key,required this.taskCount}) : super(key: key);
  late int taskCount;

  @override
  Widget build(BuildContext context) {
    print("vvvv + $taskCount");
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.list, color: Colors.blue, size: 35,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text("TODOEY", style: TextStyle(
              color: Colors.white, fontWeight:  FontWeight.bold,
              fontSize: 25,
            ),),
          ),
          Text("${taskCount > 1?"$taskCount Tasks": "$taskCount Task"}", style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),),
        ],
      ),
    );
  }
}
