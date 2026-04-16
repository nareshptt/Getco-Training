import 'package:flutter/material.dart';

import '../DataPassing/DataSchema.dart' show MobileData;

class MobileDetailScreen extends StatelessWidget {
  final MobileData mobile;

  const MobileDetailScreen({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(mobile.name)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.phone_android, size: 80, color: Colors.blue),
                const SizedBox(height: 20),

                Text(
                  mobile.name,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                _row("Brand", mobile.brand),
                _row("Price", "₹${mobile.price}"),
                _row("RAM", mobile.ram),
                _row("Storage", mobile.storage),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _row(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          Text(value),
        ],
      ),
    );
  }
}
