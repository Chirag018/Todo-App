import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  // final List<Task> tasks;

  // TaskList(this.tasks);

  // final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          // ignore: missing_return
          itemBuilder: (context, index) {
            final task=taskdata.tasks[index];
            return TaskTile(
              taskTile: task.name,
              isChecked: task.isDone,
              // ignore: always_specify_types
              checkboxCallback: (dynamic checkboxState) {
                taskdata.updateTask(task);
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              },
              longPressCallback: (){
                taskdata.deleteTask(task);
              },
            );
          },

          itemCount: taskdata.taskCount,
        );

        // );
      },
    );
    // children: <Widget>[
    //   TaskTile(taskTile: tasks[0].name,isChecked: tasks[0].isDone,),
    //   TaskTile(taskTile: tasks[1].name,isChecked: tasks[1].isDone,),
    //   TaskTile(taskTile: tasks[2].name,isChecked: tasks[2].isDone,),
    // ListTile(
    //   title: Text('This is a Task.'),
    //   trailing: Checkbox(
    //     value: false,
    //   ),
    // ),
    //   ],
    // );
  }
}
