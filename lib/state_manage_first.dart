import 'package:flutter/material.dart';

class StateManageFirst extends StatefulWidget {
  const StateManageFirst({super.key});

  @override
  State<StateManageFirst> createState() => _StateManageFirstState();
}

class _StateManageFirstState extends State<StateManageFirst> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("$number"),
          ),
          //anonymus method
          TextButton(
            onPressed: () {
              setState(() {
                number++;
                print("Button working $number");
              });
            },
            child: Text("Click me!"),
          )
        ],
      ),
    );
  }
}