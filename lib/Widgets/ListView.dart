import 'package:flutter/material.dart';

Widget listviewShow(BuildContext context) {
  final List<Map<String, String>> users = List.generate(50, (index) {
    return {
      "name": "User ${index + 1}",
      "email": "user${index + 1}@gmail.com",
      "role": index % 2 == 0 ? "Admin" : "User",
    };
  });

  return Scaffold(
    body: ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];

        return Card(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Text(
                "${index + 1}",
                style: TextStyle(color: Colors.white),
              ), // First letter
            ),
            title: Text(user["name"]!),
            subtitle: Text(user["email"]!),
            trailing: Text(user["role"]!),
            splashColor: Colors.blue, //On Tap Color Change

            onTap: () {
              print("Clicked ${user["name"]}");
            },
          ),
        );
      },
    ),
  );
}

Widget getlistView() {
  var listview = ListView(
    children: [
      ListTile(
        leading: Icon(Icons.person),
        title: Text("Getco"),
        subtitle: Text("Getri"),
        trailing: Icon(Icons.cabin_outlined),
        onTap: () {},
      ),
    ],
  );

  return listview;
}
