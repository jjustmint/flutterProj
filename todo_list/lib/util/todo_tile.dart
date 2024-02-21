import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Colors.amber[200],
            borderRadius: BorderRadius.circular(12.0)),
        child: Row(
          children: [
            //Checkbox
            Checkbox(value: taskCompleted, onChanged: onChanged, activeColor: Colors.amber[800],),
            //Text
            Text(
              taskName, 
              style: TextStyle(
                decoration: taskCompleted 
                  ? TextDecoration.lineThrough 
                  : TextDecoration.none)),
          ],
        ),
      ),
    );
  }
}
