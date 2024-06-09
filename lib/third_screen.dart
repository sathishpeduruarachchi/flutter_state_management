import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Third Screen"),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go to Back"),
            ),
            TextButton(
              onPressed: () {
                Navigator.popUntil(
                  context,
                  ModalRoute.withName("/"),
                );
              },
              child: const Text("Back to 1st"),
            ),
          ],
        ),
      ),
    );
  }
}
