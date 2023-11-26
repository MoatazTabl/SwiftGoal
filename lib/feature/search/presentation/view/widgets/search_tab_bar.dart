import 'package:flutter/material.dart';

class SearchTabBar extends StatelessWidget {
  const SearchTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      labelStyle: TextStyle(fontSize: 14),
      enableFeedback: true,
      isScrollable: true,
      tabAlignment: TabAlignment.center,
      labelPadding: EdgeInsets.symmetric(horizontal: 10),
      tabs: [
        Tab(
          text: 'All',
        ),
        Tab(
          text: 'Matches',
        ),
        Tab(text: 'Teams'),
        Tab(text: 'Leagues'),
        Tab(text: 'Players'),
      ],
    );
  }
}
