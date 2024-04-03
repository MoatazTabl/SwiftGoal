import 'package:flutter/material.dart';
import 'package:swift_goal/feature/team_details/presentation/view/widgets/tabs/matches_tab.dart';
import 'package:swift_goal/feature/team_details/presentation/view/widgets/tabs/players_tab.dart';
import 'package:swift_goal/feature/team_details/presentation/view/widgets/team_details_tab_bar.dart';
import 'package:swift_goal/feature/team_details/presentation/view/widgets/team_details_view_header.dart';

class TeamDetailsView extends StatelessWidget {
  const TeamDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TeamDetailsViewHeader(),
            TeamDetailsTabBar(),
            Expanded(
              child: TabBarView(children: [
                MatchesTab(),
                PlayersTab(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
