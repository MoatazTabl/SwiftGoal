import 'package:flutter/material.dart';
import 'package:swift_goal/feature/home/presentation/view/widgets/league_matches.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView.builder(itemBuilder: (context, index) {
        return LeagueMatchesItem();
      },itemCount: 5,),
    );
  }
}
