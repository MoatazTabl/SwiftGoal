import 'package:flutter/material.dart';

import 'feature/home/presentation/view/home_screen.dart';

class MainScreen extends StatefulWidget {
  /// This is the main screen with bottom nav bar
   const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  /// screens
  final List<Widget> _bottomTabs = [
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
        children: _bottomTabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabIndex,
        onTap: (value) {
          setState(() {
            tabIndex=value;
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
