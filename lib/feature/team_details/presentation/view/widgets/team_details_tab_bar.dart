import 'package:flutter/material.dart';

class TeamDetailsTabBar extends StatefulWidget {
  const TeamDetailsTabBar({super.key});



  @override
  State<TeamDetailsTabBar> createState() => _MatchDetailTabBarState();
}

class _MatchDetailTabBarState extends State<TeamDetailsTabBar> {
  // ignore: unused_field
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (value) {
        _index = 0;
        setState(() {
          _index = value;
        });
      },

      enableFeedback: true,
      tabs: const [
        Text(
          "Matches",
        ),
        Text("Players"),
      ],

    );
  }
}
