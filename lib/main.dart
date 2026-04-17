import 'package:flutter/material.dart';
import 'package:getco_traing/Screens/Home.dart';
import 'package:getco_traing/Screens/Splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 25, color: Colors.redAccent),
        ),
      ),

      // ✅ First screen to open
      initialRoute: "/",

      // ✅ All routes
      routes: {
        "/": (context) => const SplashScreen(),

        "/ListView": (context) => Home(0),
        "/GridView": (context) => Home(1),
        "/AlertBox": (context) => Home(2),
        "/Counter": (context) => Home(3),
        "/InputScreen": (context) => Home(4),
        "/AudioScreen": (context) => Home(5),
      },
    );
  }
}
