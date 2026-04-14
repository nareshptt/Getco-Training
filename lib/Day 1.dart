import 'package:flutter/material.dart';

class Day1 extends StatefulWidget {
  const Day1({super.key});

  @override
  State<Day1> createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "Home",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
      ),
    );
  }
}
