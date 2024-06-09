import 'package:flutter/material.dart';
import 'package:state_flutter/third_screen.dart';

class SecondScreen extends StatefulWidget {
  final String data;
  const SecondScreen({super.key, required this.data});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Second Screen"),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdScreen(),
                  ),
                );
                
              },
              child: const Text("Next Page"),
            ),
            // TextButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   child: const Text("Go to Back"),
            // ),
            Text("My name is ${widget.data}")
          ],
        ),
      ),
    );
  }
}
