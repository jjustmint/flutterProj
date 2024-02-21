import "package:flutter/material.dart";
import "package:todo_2/util/todo_tile.dart";

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List todoList = [
    ["Make Toturial", false],
    ["Bake cookies!",false]
  ];

  // ignore: non_constant_identifier_names
  void CheckBoxChange(bool? value, int index){
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("To Do List"),
          backgroundColor: Colors.deepPurpleAccent.shade100,
        ),
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index){
            return ToDoTile(
              taskname: todoList[index][0], 
              taskcompleted: todoList[index][1], 
              onChanged: (value) => CheckBoxChange(value, index),
            );}
        ));
  }
}
