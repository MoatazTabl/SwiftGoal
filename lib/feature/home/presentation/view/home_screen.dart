import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/feature/home/presentation/view/league_details_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      child: Column(
        children: [
          LeagueDetailsItem(
              leagueLogo: "assets/images/PremierLeague_logo_test.png",
              leagueName: "Premier League",
              countryLogo: "assets/images/country_icon_test.png",
              countryName: "England"),
        ],
      ),
    );
  }
}
