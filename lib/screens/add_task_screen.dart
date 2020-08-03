import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  // final Function addTaskCallback;

  // AddTaskScreen(this.addTaskCallback);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String h;
 // ignore: prefer_single_quotes
    String newTaskTitle = "";
  @override
  Widget build(BuildContext context) {
   
    return Container(
      padding: EdgeInsets.all(20.0),
      // color: Color(0xff757575),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onSubmitted: (String newText) {
              // print(newText);
              // change the state to stateful widget and add setstate().s
              setState(() {
                newTaskTitle = newText;
              });
              print(newTaskTitle);
            },
          ),
          FlatButton(
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.lightBlueAccent,
            onPressed: () {
              // print(newTaskTitle);
              // print(h);
              // Added widget.
              // widget.addTaskCallback(newTaskTitle);
              //  final task=Task(name:newTaskTitle);
               Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
               Navigator.pop(context);

            },
          ),
          // Text(newTaskTitle),
        ],
      ),
    );
  }
}
