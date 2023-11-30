import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/core/app_theme.dart';
import 'package:swift_goal/feature/player_info/presentation/view/widgets/current_season_stats.dart';
import 'package:swift_goal/feature/player_info/presentation/view/widgets/player_quick_info.dart';
import 'package:swift_goal/feature/player_info/presentation/view/widgets/trophies_list.dart';

class PlayerInfo extends StatelessWidget {
  const PlayerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Cristiano Ronaldo",overflow: TextOverflow.ellipsis,),
          centerTitle: true,
          backgroundColor: AppThemes.neutral800,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                "https://b.fssta.com/uploads/application/soccer/headshots/885.vresize.350.350.medium.14.png",
                height: 200.h,
                width: 200.w,
              ),
              const PlayerQuickInfo(),
              Container(
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppThemes.tabBarBackGround,
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CurrentSeasonStats(
                      statNum: '13',
                      statName: 'Matches',
                    ),
                    CurrentSeasonStats(
                      statNum: '15',
                      statName: 'Goals',
                    ),
                    CurrentSeasonStats(
                      statNum: '7',
                      statName: 'Assists',
                    ),
                    CurrentSeasonStats(
                      statNum: '8.46',
                      statName: 'Rating',
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppThemes.tabBarBackGround,
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Trophies",
                      ),
                    ),
                    TrophiesList(),
                    TrophiesList(),
                    TrophiesList(),
                    TrophiesList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

