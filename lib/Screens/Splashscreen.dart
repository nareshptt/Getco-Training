import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getco_traing/Screens/BottomNavigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Bottomnavigation()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.apartment, size: 90, color: Colors.white),
            SizedBox(height: 20),

            Text(
              "GETCO",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 3,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Welcome to GETCO",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
