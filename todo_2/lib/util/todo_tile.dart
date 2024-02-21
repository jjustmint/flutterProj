import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskname;
  final bool taskcompleted;
  Function(bool?)? onChanged;

  ToDoTile(
      {super.key,
      required this.taskname,
      required this.taskcompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: Container(
        padding: const EdgeInsets.all(26.0),
        decoration: BoxDecoration(
            color: Colors.blue.shade300,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            //Check box
            Checkbox(value: taskcompleted, onChanged: onChanged),
            //Task name
            Text(taskname)
          ],
        ),
      ),
    );
  }
}
