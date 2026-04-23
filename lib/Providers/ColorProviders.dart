import 'dart:math';

import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  Color _color = Colors.blue;

  Color get color => _color;

  void changeColor() {
    final random = Random();

    _color = Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    notifyListeners();
  }
}
