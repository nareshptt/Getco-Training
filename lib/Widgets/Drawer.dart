import 'package:flutter/material.dart';
import 'package:getco_traing/Screens/Home.dart';

Widget drawer(BuildContext context) {
  return SafeArea(
    child: Column(
      children: [
        _menuItem(context, "ListView", Icons.list, () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            "/ListView",
            (route) => false,
          );
        }),

        _menuItem(context, "GridView", Icons.grid_view, () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => Home(1)),
            (route) => false,
          );
        }),

        _menuItem(context, "Alerts", Icons.warning, () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            "/AlertBox",
            (route) => false,
          );
        }),

        _menuItem(context, "Counter", Icons.plus_one, () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            "/Counter",
            (route) => false,
          );
        }),

        _menuItem(context, "Input Form", Icons.input, () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            "/InputScreen",
            (route) => false,
          );
        }),

        _menuItem(context, "AudioScreen", Icons.audio_file_outlined, () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            "/AudioScreen",
            (route) => false,
          );
        }),
      ],
    ),
  );
}

Widget _menuItem(
  BuildContext context,
  String title,
  IconData icon,
  VoidCallback onTap,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Container(
        height: 55,
        width: 260,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, size: 26),
            const SizedBox(width: 15),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ),
  );
}
