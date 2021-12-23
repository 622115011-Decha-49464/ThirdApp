// ignore_for_file: prefer_const_constructors, unused_local_variable, unused_import

import 'package:flutter/material.dart';
import 'package:thirdapp/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '☆꧁༒Third app༒꧂☆',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: '彡 Third app 彡'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = List<String>.generate(1000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    List mydata = ['apple', 'banana', 'papaya'];
    return Scaffold(
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title),
            Icon(Icons.local_grocery_store_rounded)
          ],
        )),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailsPage()));
              },
              leading: Icon(Icons.gamepad),
              title: Text(items[index]),
              subtitle: Text(mydata[index]),
              trailing: Icon(Icons.fastfood),
            ));
          },
          itemCount: mydata.length,
        ));
  }
}
