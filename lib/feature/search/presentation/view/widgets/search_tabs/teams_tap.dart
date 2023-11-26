import 'package:flutter/material.dart';

import '../search_team_item.dart';

class TeamsTap extends StatelessWidget {
  const TeamsTap({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: SearchTeamItem(),
          );
        }, itemCount: 4);
  }
}
