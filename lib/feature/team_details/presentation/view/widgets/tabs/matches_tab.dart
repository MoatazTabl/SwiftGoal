import 'package:flutter/material.dart';
import 'package:swift_goal/feature/home/presentation/view/widgets/league_matches.dart';

class MatchesTab extends StatelessWidget {
  const MatchesTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const LeagueMatchesItem();
        },
        itemCount: 2,
      ),
    );
  }
}
