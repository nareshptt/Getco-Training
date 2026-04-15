import 'package:flutter/material.dart';

class counterScreen extends StatefulWidget {
  const counterScreen({super.key});

  @override
  State<counterScreen> createState() => _counterScreenState();
}

class _counterScreenState extends State<counterScreen> {
  var counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
        onPressed: () {
          incrementCounter();
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Center(
            child: Text(
              'Data $counter',
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
