import 'package:flutter/material.dart';

void showMySnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: 3),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      backgroundColor: Colors.transparent,
      elevation: 0,

      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green, Colors.teal]),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              offset: Offset(0, 3),
              color: Colors.black26,
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(Icons.check_circle, color: Colors.white),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                "Login Successful",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
              child: Icon(Icons.close, color: Colors.white),
            ),
          ],
        ),
      ),
    ),
  );
}
