import 'package:flutter/material.dart';
import 'package:todo_list/util/dialog_box.dart';
import 'package:todo_list/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// list of todo tasks
  List toDoList = [
    ["Make tutorial", false],
    ["Exercise", false]
  ];
  final _controller = TextEditingController();

  //checkbox was tapped
  void checkboxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void createNewTask(){
    showDialog(context: context, builder: (context){
      return DialogBox(
        controller: _controller,
        onSaved: savedNewTask,
        onCancel: () => Navigator.of(context).pop(),
        );
    });
  }

  void savedNewTask(){
    setState((){
      toDoList.add([_controller.text, false]);
      _controller.clear();
  });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[100],

        appBar: AppBar(
          title: const Text('TO DO'),
          centerTitle: true,
          backgroundColor: Colors.amber[300],
        ),
        
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: createNewTask,
          backgroundColor: Colors.amber[700],
          child: const Icon(Icons.add),
        ),
        
        body: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (context, index) {
              return ToDoTile(
                  taskName: toDoList[index][0],
                  taskCompleted: toDoList[index][1],
                  onChanged: (value) => checkboxChanged(value, index));
            }));
  }
}
