import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'league_details_item.dart';
import 'match_item.dart';

class LeagueMatchesItem extends StatelessWidget {
  const LeagueMatchesItem({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LeagueDetailsItem(
          leagueLogo: "assets/images/PremierLeague_logo_test.png",
          leagueName: "Premier League",
          countryLogo: "assets/images/country_icon_test.png",
          countryName: "England",
        ),
        SizedBox(
          height: 8.h,
        ),
        const MatchItem(
            teamLogo1: "assets/images/liverpool_logo_test.png",
            teamName1: "Liverpool",
            teamResult1: "3",
            teamLogo2: "assets/images/astonvilla_logo_test.png",
            teamName2: "Astonvilla",
            teamResult2: "1"),
        SizedBox(height: 8.h,),
        const MatchItem(
            teamLogo1: "assets/images/liverpool_logo_test.png",
            teamName1: "Liverpool",
            teamResult1: "3",
            teamLogo2: "assets/images/astonvilla_logo_test.png",
            teamName2: "Astonvilla",
            teamResult2: "1"),
        SizedBox(height: 8.h,),
        const MatchItem(
            teamLogo1: "assets/images/liverpool_logo_test.png",
            teamName1: "Liverpool",
            teamResult1: "3",
            teamLogo2: "assets/images/astonvilla_logo_test.png",
            teamName2: "Astonvilla",
            teamResult2: "1"),
        SizedBox(height: 8.h,),
        const MatchItem(
            teamLogo1: "assets/images/liverpool_logo_test.png",
            teamName1: "Liverpool",
            teamResult1: "3",
            teamLogo2: "assets/images/astonvilla_logo_test.png",
            teamName2: "Astonvilla",
            teamResult2: "1"),
        SizedBox(height: 35.h,),
      ],
    );
  }
}
