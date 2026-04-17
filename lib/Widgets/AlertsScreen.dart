import 'package:flutter/material.dart';
import 'package:getco_traing/Widgets/CustomAlertbox.dart';

class Aboutscreen extends StatefulWidget {
  const Aboutscreen({super.key});

  @override
  State<Aboutscreen> createState() => _AboutscreenState();
}

class _AboutscreenState extends State<Aboutscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),

              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white, // text color
                ),
                onPressed: () {
                  myAlertBox(context);
                },
                child: Text("Click Me"),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white, // text color
                ),
                onPressed: () {
                  showCustomAlert(context);
                },
                child: Text("Custom AlertBox"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void myAlertBox(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("My Alert Box"),
        content: Text("Are You fine with this ?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Ok"),
          ),
        ],
      );
    },
  );
}
