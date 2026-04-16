import 'package:flutter/material.dart';

import 'Home.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

int _currentIndex = 0;
final List<Widget> _pages = [const Home(0), const Home(1), const Home(2)];

class _BottomnavigationState extends State<Bottomnavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_4x4_rounded),
            label: "GrideView",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );

    ;
  }

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
