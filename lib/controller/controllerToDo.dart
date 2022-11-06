


import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:todo/main.dart';
import 'package:todo/model/modelToDo.dart';

class CToDo extends GetxController {

  toDo todolist = new toDo(ListToDo:["task1","task2"] );


  //
  void add(String text) {
  todolist.ListToDo.add(text);

    update();
  }
void delete (int index){
  todolist.ListToDo.removeAt(index);
}
}



