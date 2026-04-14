import 'package:flutter/material.dart';
import 'package:getco_traing/AboutScreen.dart';

Widget drawer(BuildContext context) {
  return SafeArea(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(10),
          height: 50,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text("Home", style: TextStyle(fontSize: 30))),
        ),
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(10),
          height: 50,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text("Profile", style: TextStyle(fontSize: 30))),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Aboutscreen()),
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
            child: Center(child: Text("Help", style: TextStyle(fontSize: 30))),
          ),
        ),
      ],
    ),
  );
}
