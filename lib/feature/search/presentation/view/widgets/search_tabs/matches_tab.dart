import 'package:flutter/material.dart';

import '../../../../../home/presentation/view/widgets/league_matches.dart';

class MatchesTap extends StatelessWidget {
  const MatchesTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemBuilder: (context, index) {
        return const LeagueMatchesItem();
      },
      itemCount: 3,
    );
  }
}
