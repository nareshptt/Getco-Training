import 'dart:math';

import 'package:flutter/material.dart';
import 'package:getco_traing/Widgets/Drawer.dart';

class Day1 extends StatefulWidget {
  const Day1({super.key});

  @override
  State<Day1> createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  String _selectedLocation = 'Aspen, USA';
  var _randomNumber;
  @override
  Widget build(BuildContext context) {
    mymathfun() {
      var random = Random();
      var randomNumber = random.nextInt(100);
      setState(() {
        _randomNumber = randomNumber;
      });
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: mymathfun,
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(child: drawer(context)),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "GETCO",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Center(
            child: Text(
              _randomNumber == null
                  ? "No number generated"
                  : "Your Number is  $_randomNumber",
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Welcome to  $_selectedLocation",
              style: TextStyle(color: Colors.green, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
