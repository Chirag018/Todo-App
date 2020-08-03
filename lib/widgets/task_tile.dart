import 'package:flutter/material.dart';
// import 'package:flutter_tools/src/vscode_validator.dart';

class TaskTile extends StatelessWidget {
//   @override
//   _TaskTileState createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
  final bool isChecked;
  final String taskTile;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.isChecked, this.taskTile, this.checkboxCallback,this.longPressCallback});

  // void checkboxCallback(bool checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        // 'This is a Task.',
        taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function toggleCheckboxState;

//   TaskCheckBox({this.checkBoxState, this.toggleCheckboxState});

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
