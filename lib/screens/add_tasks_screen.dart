import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dailytasks/task_data.dart ';

class AddTasksScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTasksScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 30),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context,listen:false).addTask(newTaskTitle!);
            
            },
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
