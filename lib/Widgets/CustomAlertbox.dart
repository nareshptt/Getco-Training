import 'package:flutter/material.dart';

void showCustomAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Delete Item"),
        content: Text("Are you sure you want to delete this item?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white, // text color
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Delete"),
          ),
        ],
      );
    },
  );
}
