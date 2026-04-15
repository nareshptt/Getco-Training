import 'package:flutter/material.dart';
import 'package:getco_traing/Widgets/AlertsScreen.dart';
import 'package:getco_traing/Widgets/CounterScreen.dart';
import 'package:getco_traing/Widgets/Drawer.dart';
import 'package:getco_traing/Widgets/ListView.dart';

import 'Widgets/GrideView.dart';

class Home extends StatefulWidget {
  final int name; // 👈 should be int (index)

  const Home(this.name, {super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget getBody() {
    switch (widget.name) {
      case 0:
        return listviewShow(context);

      case 1:
        return GridViewDemo();
      case 2:
        return Aboutscreen();
      case 3:
        return counterScreen();
      default:
        return Center(child: Text("Invalid Index"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(child: drawer(context)),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          "GETCO",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      body: getBody(),
    );
  }
}
