
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/controllerToDo.dart';



class mywidget extends StatefulWidget {
  const mywidget({Key? key}) : super(key: key);

  @override
  State<mywidget> createState() => _mywidgetState();
}

class _mywidgetState extends State<mywidget> {
  final CToDo todoController = Get.put(CToDo());

  @override
  Widget build(BuildContext context) {
    return Container(

        child:ListView.builder(
        itemCount: todoController.todolist.ListToDo.length,
        itemBuilder: (context, index) {
          return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                  title: Text(todoController.todolist.ListToDo[index]),
                  leading: Icon(Icons.check_box_outline_blank),

                  trailing:
                  IconButton(
                    onPressed: () {
setState(() {
  //todoController.todolist.ListToDo.removeAt(index);
todoController.delete(index);
});
                      //   tasks.removeAt(index);

                      Get.back();
                    },
                    icon: Icon(Icons.delete),
                  )
              )
          );
        }
    )

    );
  }
}
