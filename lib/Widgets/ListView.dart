import 'package:flutter/material.dart';

import '../DataPassing/DataSchema.dart' show MobileData;
import '../Screens/MobileInfo.dart';

class listviewShow extends StatelessWidget {
  listviewShow({super.key});

  final List<MobileData> mobiles = [
    MobileData(
      name: "iPhone 15",
      brand: "Apple",
      price: 79999,
      ram: "6GB",
      storage: "128GB",
    ),
    MobileData(
      name: "iPhone 14",
      brand: "Apple",
      price: 69999,
      ram: "6GB",
      storage: "128GB",
    ),
    MobileData(
      name: "Galaxy S23",
      brand: "Samsung",
      price: 74999,
      ram: "8GB",
      storage: "256GB",
    ),
    MobileData(
      name: "Galaxy A54",
      brand: "Samsung",
      price: 38999,
      ram: "8GB",
      storage: "128GB",
    ),
    MobileData(
      name: "OnePlus 11",
      brand: "OnePlus",
      price: 56999,
      ram: "12GB",
      storage: "256GB",
    ),
    MobileData(
      name: "OnePlus Nord 3",
      brand: "OnePlus",
      price: 33999,
      ram: "8GB",
      storage: "128GB",
    ),
    MobileData(
      name: "Pixel 8",
      brand: "Google",
      price: 75999,
      ram: "8GB",
      storage: "128GB",
    ),
    MobileData(
      name: "Pixel 7a",
      brand: "Google",
      price: 43999,
      ram: "8GB",
      storage: "128GB",
    ),
    MobileData(
      name: "Redmi Note 13",
      brand: "Xiaomi",
      price: 18999,
      ram: "6GB",
      storage: "128GB",
    ),
    MobileData(
      name: "Realme GT Neo 3",
      brand: "Realme",
      price: 29999,
      ram: "8GB",
      storage: "128GB",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: mobiles.length,
        itemBuilder: (context, index) {
          final mobile = mobiles[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              splashColor: Colors.blueAccent,
              leading: const Icon(Icons.phone_android),
              title: Text(
                mobile.name,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: Text("${mobile.brand} • ₹${mobile.price}"),
              trailing: const Icon(Icons.arrow_forward_ios),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MobileDetailScreen(mobile: mobile),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
