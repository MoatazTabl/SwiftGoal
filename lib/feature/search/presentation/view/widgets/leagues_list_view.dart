import 'package:flutter/material.dart';

import 'league_item.dart';

class LeaguesListView extends StatelessWidget {
  const LeaguesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: LeagueItem(),
        );
      },
      itemCount: 8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
