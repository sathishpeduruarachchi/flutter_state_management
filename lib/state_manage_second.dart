import 'package:flutter/material.dart';

class StateManageSecond extends StatefulWidget {
  const StateManageSecond({super.key});

  @override
  State<StateManageSecond> createState() => _StateManageSecondState();
}

class _StateManageSecondState extends State<StateManageSecond> {
  bool isFavorite = false;

//write in method
  colorChange() {
    if (isFavorite == true) {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }

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
                    "assets/images/img1.jpg",
                    height: 190,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0, top: 5.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isFavorite = !isFavorite;
                              print("VALUE:::::::::::::$isFavorite");
                            });
                          },
                          //ternory operators
                          child: Icon(
                            Icons.favorite,
                            color:
                                isFavorite == true ? Colors.red : Colors.grey,
                          ),
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

//calling method
// child: Icon(
//                             Icons.favorite,
//                             color: colorChange()
//                           ),

// Image.network(
                  //   "https://unsplash.com/photos/a-body-of-water-surrounded-by-rocks-and-mountains-VVkKlU1UXbQ",
                  //   height: 180,
                  //   width: 220,
                  //   fit: BoxFit.fill,
                  // )