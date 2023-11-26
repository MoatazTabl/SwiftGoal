import 'package:flutter/material.dart';
import 'package:swift_goal/feature/search/presentation/view/widgets/search_team_item.dart';

class TeamsListView extends StatelessWidget {
  const TeamsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: SearchTeamItem(),
        );
      },
      itemCount: 8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
