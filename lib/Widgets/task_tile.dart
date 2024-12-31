import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TasksTile extends StatelessWidget {
  final isChecked;
  final String tasktitle;
  final void Function(bool?) checkboxChange;
   final void Function() listTileDelete;

  TasksTile(
      {required this.isChecked,
      required this.tasktitle,
      required this.checkboxChange,
      required this.listTileDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.black,
        value: isChecked,
        onChanged: checkboxChange,
        //onChanged: checkboxchange,
      ),
      onLongPress: listTileDelete,
    );
  }
}
