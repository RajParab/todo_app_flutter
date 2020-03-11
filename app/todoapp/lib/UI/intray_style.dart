import 'package:flutter/material.dart';
import 'package:todoapp/models/classes/task.dart';
import 'package:todoapp/models/global.dart';
import 'package:todoapp/models/widgets/intray_todo_widget.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  List<Task> taskList = [];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //return of home screen material
    taskList = getList();
    return Container(
      color: darkGrey,
      child: _buildReorderableListSimple(context),
      // child: ListView(
      //   padding: EdgeInsets.only(
      //     top: 300,
      //   ),
      //   scrollDirection: Axis.vertical,
      //   children: getList(),
      // ),
    );
  }

  Widget _buildListTile(BuildContext context, Task item) {
    return ListTile(
      key: Key(item.taskId),
      title: IntrayToDo(
        title: item.title,
      ),
    );
  }

  Widget _buildReorderableListSimple(BuildContext context) {
    return Theme(
      //to change the color when highlighted to transparent.
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: ReorderableListView(
        padding: EdgeInsets.only(
          top: 300.0,
        ),
        children:
            taskList.map((Task item) => _buildListTile(context, item)).toList(),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            Task item = taskList[oldIndex];
            taskList.remove(item);
            taskList.insert(newIndex, item);
          });
        },
      ),
    );
  }



  List<Task> getList() {
    for (int i = 0; i < 10; i++) {
      taskList.add(Task("my first todo" + i.toString(), false, i.toString()));
    }
    return taskList;
  }
}
