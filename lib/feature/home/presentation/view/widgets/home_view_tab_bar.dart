import 'package:flutter/material.dart';

class HomeViewTabBar extends StatelessWidget {
  const HomeViewTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      labelStyle: TextStyle(fontSize: 14),
      indicatorSize: TabBarIndicatorSize.tab,
      enableFeedback: true,
      isScrollable: true,
      tabAlignment: TabAlignment.center,
      labelPadding: EdgeInsets.symmetric(horizontal: 10),
      indicator: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              12,
            ),
          ),
        ),
        color: Colors.black,
      ),
      tabs: [
        Tab(
          text: 'All',
        ),
        Tab(
          text: 'LIVE',
        ),
        Tab(text: 'Upcoming'),
        Tab(text: 'Finished'),
      ],
    );
  }
}
