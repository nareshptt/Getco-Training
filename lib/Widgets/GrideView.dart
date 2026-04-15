import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  GridViewDemo({super.key});

  final List<Map<String, String>> items = List.generate(50, (index) {
    return {"title": "Item ${index + 1}", "subtitle": "Grid Item ${index + 1}"};
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: items.length,
        padding: EdgeInsets.all(10),

        // 👇 grid layout
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columns
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1, // square cards
        ),

        itemBuilder: (context, index) {
          final item = items[index];

          return Card(
            color: Colors.blue.shade50,
            child: InkWell(
              onTap: () {
                print("Clicked ${item["title"]}");
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.grid_view, size: 40, color: Colors.blue),
                  SizedBox(height: 10),
                  Text(
                    item["title"]!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(item["subtitle"]!),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
