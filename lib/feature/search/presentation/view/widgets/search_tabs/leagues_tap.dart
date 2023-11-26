import 'package:flutter/material.dart';

import '../../../../../home/presentation/view/widgets/league_details_item.dart';
import '../league_item.dart';
import '../search_team_item.dart';

class LeaguesTap extends StatelessWidget {
  const LeaguesTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: LeagueItem(),
      );
    },itemCount: 6,);
  }
}
