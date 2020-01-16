import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isCheck;
  final String taskTitle;
  final Function checkBoxCallBack;
  final Function longPressCallBack;

  TaskTile({
    this.isCheck,
    this.taskTitle,
    this.checkBoxCallBack,
    this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style:
            TextStyle(decoration: isCheck ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isCheck,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
