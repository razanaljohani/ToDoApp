
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
//import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controller/controllerToDo.dart';
import '../widget/widgetToDo.dart';



class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var valuecontroller = TextEditingController();
 // final userController = Get.find<CToDo>();
  final CToDo todoController = Get.put(CToDo());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: valuecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
              ),
              onFieldSubmitted: ((value) {
                setState(() {
                //  tasks.add(value.toString());
            //      todoController.todolist.ListToDo.add(value);
todoController.add(value.toString());
                  valuecontroller.clear();
                  
                });
              }),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2.5,
             child: mywidget()
             )


        ],
      ),
    );
  }
}