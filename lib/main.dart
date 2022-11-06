import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get.dart';
import 'package:todo/view/toDoPage.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => _AppState();
}


var tasks = [
'Math Homework',
'English Exam',
];
// addStudent() {

// }
class _AppState extends State<App> {
  @override
  Widget build(context) {
  return GetMaterialApp(
  debugShowCheckedModeBanner: false,
  //create a text
  home: MainPage(),
  );
  }
}
