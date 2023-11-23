import 'package:flutter/material.dart';

class MatchDetailTabBar extends StatefulWidget {
  const MatchDetailTabBar({
    super.key,
  });

  @override
  State<MatchDetailTabBar> createState() => _MatchDetailTabBarState();
}

class _MatchDetailTabBarState extends State<MatchDetailTabBar> {
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
          "Overview",
        ),
        Text("Lineups"),
        Text("Stats"),
      ],

    );
  }
}
