import 'package:flutter/material.dart';

class StateManageSecond extends StatefulWidget {
  const StateManageSecond({super.key});

  @override
  State<StateManageSecond> createState() => _StateManageSecondState();
}

class _StateManageSecondState extends State<StateManageSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          height: 250,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/image/img1.jpg",
                    height: 190,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0, top: 5.0),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Image.network(
                  //   "https://unsplash.com/photos/a-body-of-water-surrounded-by-rocks-and-mountains-VVkKlU1UXbQ",
                  //   height: 180,
                  //   width: 220,
                  //   fit: BoxFit.fill,
                  // )