import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoPages extends StatefulWidget {
  const ToDoPages({super.key});

  @override
  State<ToDoPages> createState() => _ToDoPagesState();
}

class _ToDoPagesState extends State<ToDoPages> {
  TextEditingController mycontroller = TextEditingController();
  //greet user methods
  void greetuser() {
    print(mycontroller.text);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: mycontroller,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            ElevatedButton(onPressed: greetuser, child: Text("Tap"))
          ],
        ),
      ),
    ));
  }
}
