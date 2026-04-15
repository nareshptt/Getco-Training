import 'package:flutter/material.dart';
import 'package:getco_traing/Home.dart';

Widget drawer(BuildContext context) {
  String name = "List";
  return SafeArea(
    child: Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home(0)),
            );
          },
          child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text("ListView", style: TextStyle(fontSize: 30)),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home(1)),
            );
          },
          child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text("GrideView", style: TextStyle(fontSize: 30)),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home(2)),
            );
          },
          child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text("Alerts", style: TextStyle(fontSize: 30)),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home(3)),
            );
          },
          child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text("Counter", style: TextStyle(fontSize: 30)),
            ),
          ),
        ),
      ],
    ),
  );
}
