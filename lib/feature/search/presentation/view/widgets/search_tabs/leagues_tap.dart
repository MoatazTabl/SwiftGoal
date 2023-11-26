import 'package:flutter/material.dart';
import '../league_item.dart';

class LeaguesTap extends StatelessWidget {
  const LeaguesTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: LeagueItem(),
        ),
      );
    },itemCount: 6,);
  }
}
