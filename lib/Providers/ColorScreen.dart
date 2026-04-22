import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ColorProviders.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorProvider = context.watch<ColorProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("Color Change Provider")),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: colorProvider.color, // dynamic color
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ColorProvider>().changeColor();
        },
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}
