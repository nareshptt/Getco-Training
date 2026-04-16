import 'package:flutter/material.dart';
import 'package:getco_traing/DataPassing/InputForm.dart';
import 'package:getco_traing/Widgets/AlertsScreen.dart';
import 'package:getco_traing/Widgets/CounterScreen.dart';
import 'package:getco_traing/Widgets/Drawer.dart';
import 'package:getco_traing/Widgets/ListView.dart';

import 'Widgets/GrideView.dart';

class Home extends StatefulWidget {
  final int index;

  const Home(this.index, {super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget getBody() {
    switch (widget.index) {
      case 0:
        return listviewShow();
      case 1:
        return GridViewDemo();
      case 2:
        return Aboutscreen();
      case 3:
        return counterScreen();
      case 4:
        return InputForm();
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
