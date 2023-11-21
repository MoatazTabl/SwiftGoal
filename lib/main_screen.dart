import 'package:flutter/material.dart';

import 'feature/home/presentaion/view/home_screen.dart';

/// This is the main screen with bottom nav bar
class MainScreen extends StatefulWidget {
   const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final List<Widget> bottomTabs = [
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
        currentIndex: tabIndex,
        onTap: (value) {
          setState(() {
            tabIndex=value;
            print(tabIndex);
          });
        },
        items: const [BottomNavigationBarItem(icon: Icon(Icons.add),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: ""),
        ],),
    );
  }
}
