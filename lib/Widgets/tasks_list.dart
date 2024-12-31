import 'package:dailytasks/Widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:dailytasks/task_data.dart';

class Taskslist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.tasks.length,
            itemBuilder: (context, index) {
              return TasksTile(
                isChecked: taskData.tasks[index].isDone,
                tasktitle: taskData.tasks[index].name,
                checkboxChange: (bool? newValue) {
                  taskData.updadeTask(taskData.tasks[index]);
                },
                listTileDelete: () {
                  taskData.deleteTask(taskData.tasks[index]);
                },
              );
            });
      },
    );
  }
}
