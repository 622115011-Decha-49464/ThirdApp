// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, empty_statements

import 'package:flutter/material.dart';
import 'package:thirdapp/main.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyApp()));
                    },
                    icon: Icon(Icons.arrow_back_sharp)),
                Text("Back to main page")
              ],
            ),
            Divider(),
            Text(
              "Y E A H H H H H!!!!! Y E A H H H H H!!!!! Y E A H H H H H!!!!!",
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Image.network(
                "https://c.tenor.com/AUteKr8hSX0AAAAM/i-said-hey-he-man.gif"),
          ],
        )
      ],
    ));
  }
}
