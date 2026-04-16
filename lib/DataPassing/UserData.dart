import 'package:flutter/material.dart';

import 'UsersData.dart';

class UserDataScreen extends StatelessWidget {
  final Usersdata user;

  const UserDataScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text("User Data"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.person, size: 70, color: Colors.blue),
                const SizedBox(height: 15),

                const Text(
                  "User Details",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.badge, color: Colors.grey),
                    const SizedBox(width: 10),
                    Text(
                      "Name: ${user.name}",
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.cake, color: Colors.grey),
                    const SizedBox(width: 10),
                    Text(
                      "Age: ${user.age}", // FIXED HERE
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
