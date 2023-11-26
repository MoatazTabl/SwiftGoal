import 'package:flutter/material.dart';

import '../../../../../home/presentation/view/widgets/league_details_item.dart';

class LeaguesTap extends StatelessWidget {
  const LeaguesTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: LeagueDetailsItem(
          leagueLogo: "assets/images/PremierLeague_logo_test.png",
          leagueName: "Premier League",
          countryLogo: "assets/images/country_icon_test.png",
          countryName: "England",
        ),
      );
    },itemCount: 6,);
  }
}
