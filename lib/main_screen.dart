import 'package:flutter/material.dart';
import 'package:swift_goal/feature/search/presentation/view/search_tab.dart';

import 'feature/home/presentation/view/home_screen.dart';

class MainScreen extends StatefulWidget {
  /// This is the main screen with bottom nav bar
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  /// BottomNavBarScreens
  final List<Widget> _bottomTabs = [
    const HomeScreen(),
    const HomeScreen(),
    const SearchTab(),
    const HomeScreen()
  ];

  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _tabIndex,
        children: _bottomTabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabIndex,
        onTap: (value) {
          setState(() {
            _tabIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/icons/home_icon.png"),
            ),
            label: "Matches",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              size: 26,
            ),
            label: "WatchList",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 28,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
