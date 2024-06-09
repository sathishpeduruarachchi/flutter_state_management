import 'package:flutter/material.dart';
import 'package:state_flutter/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final firstTextFeildCotroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("First Screen"),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(
                      data: firstTextFeildCotroller.text,
                    ),
                  ),
                );
                print(firstTextFeildCotroller.text);
              },
              child: const Text("Next Page"),
            ),
           
          ],
        ),
      ),
    );
  }
}
