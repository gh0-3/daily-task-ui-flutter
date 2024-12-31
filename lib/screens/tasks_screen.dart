import 'package:dailytasks/Widgets/tasks_list.dart';
import 'package:dailytasks/screens/add_tasks_screen.dart';
import 'package:dailytasks/task_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
          child: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTasksScreen((newTaskTitle) {
                        print(newTaskTitle);
                      })),
                ),
              );
            },
            backgroundColor: Colors.blueGrey,
            child: Icon(Icons.add),
          ),
          padding: const EdgeInsets.only(bottom: 100, right: 30),
        ),
        backgroundColor: Colors.black,
        body: Container(
          padding:
              const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
          // ignore: prefer_const_constructors
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Icon(
                    Icons.playlist_add_check,
                    size: 40,
                    color: Colors.white,
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Daily Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Text(
                '${Provider.of<TaskData>(context).tasks.length} Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        )),
                    child: Taskslist(),
                    ),
              )
            ],
          ),
        ));
  }
}
