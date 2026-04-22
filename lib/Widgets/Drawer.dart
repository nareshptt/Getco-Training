import 'package:flutter/material.dart';
import 'package:getco_traing/Database/Hive%20DB/HiveDataBase.dart';
import 'package:getco_traing/Screens/Home.dart';

import '../API/NewsAPI.dart';
import '../API/ProductsAPI.dart';
import '../Authentication/UserLogin/Login.dart';
import '../Providers/ColorScreen.dart';

Widget drawer(BuildContext context) {
  return SafeArea(
    child: SingleChildScrollView(
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
          _menuItem(context, "Hive DB", Icons.storage_sharp, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (builder) => HiveFormScreen()),
            );
          }),
          _menuItem(context, "User Login", Icons.login, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (builder) => LoginScreen()),
            );
          }),
          _menuItem(context, "News API", Icons.newspaper_outlined, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (builder) => GNewsScreen()),
            );
          }),
          _menuItem(context, "Products API", Icons.shopify_outlined, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (builder) => ProductScreen()),
            );
          }),
          _menuItem(context, "Color Provider", Icons.color_lens_outlined, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (builder) => ColorScreen()),
            );
          }),
          SizedBox(height: 20),
        ],
      ),
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
