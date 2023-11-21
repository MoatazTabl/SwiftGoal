import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/feature/home/presentation/view/widgets/league_details_item.dart';
import 'package:swift_goal/feature/home/presentation/view/widgets/match_item.dart';
import 'package:swift_goal/feature/match_details/presentation/view/match_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 35),
      child: Column(
        children: [
          LeagueDetailsItem(
            leagueLogo: "assets/images/PremierLeague_logo_test.png",
            leagueName: "Premier League",
            countryLogo: "assets/images/country_icon_test.png",
            countryName: "England",
          ),
          SizedBox(
            height: 8.h,
          ),
          MatchItem(
              teamLogo1: "assets/images/liverpool_logo_test.png",
              teamName1: "Liverpool",
              teamResult1: "3",
              teamLogo2: "assets/images/astonvilla_logo_test.png",
              teamName2: "Astonvilla",
              teamResult2: "1"),
        ],
      ),
    );
  }
}
