import 'package:flutter/material.dart';

import 'feature/home/presentaion/view/home_screen.dart';

class MainScreen extends StatelessWidget {
   MainScreen({super.key});

  List<Widget> bottomTabs = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen()
  ];
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index:tabIndex,
        children: bottomTabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          tabIndex=value;
        },
        items: const [BottomNavigationBarItem(icon: Icon(Icons.add),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: ""),
        ],),
    );
  }
}
