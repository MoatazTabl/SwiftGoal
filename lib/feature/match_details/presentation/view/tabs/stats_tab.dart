import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/core/app_theme.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MatchStats(
            statName: "Ball Possession",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .8,
            teamTwoLinearStatValue: .2,
          ),
          MatchStats(
            statName: "Shots On Goal",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: 0,
            teamTwoLinearStatValue: .2,
          ),
          MatchStats(
            statName: "Shots off Goal",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .1,
            teamTwoLinearStatValue: .3,
          ),
          MatchStats(
            statName: "Total Shots",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .7,
            teamTwoLinearStatValue: .6,
          ),
          MatchStats(
            statName: "Blocked Shots",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .1,
            teamTwoLinearStatValue: .5,
          ),
          MatchStats(
            statName: "Shots insidebox",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .3,
            teamTwoLinearStatValue: .9,
          ),
          MatchStats(
            statName: "Shots outsidebox",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .5,
            teamTwoLinearStatValue: 1,
          ),
          MatchStats(
            statName: "Fouls",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .9,
            teamTwoLinearStatValue: .4,
          ),
          MatchStats(
            statName: "Offsides",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .8,
            teamTwoLinearStatValue: .2,
          ),
          MatchStats(
            statName: "Yellow Cards",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .8,
            teamTwoLinearStatValue: .2,
          ),
          MatchStats(
            statName: "Red Cards",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .8,
            teamTwoLinearStatValue: .2,
          ),
          MatchStats(
            statName: "Goalkeeper Saves",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .8,
            teamTwoLinearStatValue: .2,
          ),
          MatchStats(
            statName: "Total passes",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .8,
            teamTwoLinearStatValue: .2,
          ),
          MatchStats(
            statName: "Passes accurate",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .8,
            teamTwoLinearStatValue: .2,
          ),
          MatchStats(
            statName: "Passes Accuracy",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .8,
            teamTwoLinearStatValue: .2,
          ),
          MatchStats(
            statName: "expected_goals",
            teamOneStat: '10',
            teamTwoStat: '7',
            teamOneLinearStatValue: .8,
            teamTwoLinearStatValue: .2,
          ),
        ],
      ),
    );
  }
}

class MatchStats extends StatelessWidget {
  const MatchStats({
    super.key,
    required this.statName,
    required this.teamOneStat,
    required this.teamTwoStat,
    required this.teamOneLinearStatValue,
    required this.teamTwoLinearStatValue,
  });

  final String statName;
  final double teamOneLinearStatValue;
  final double teamTwoLinearStatValue;
  final String teamOneStat;
  final String teamTwoStat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 16),
          child: Row(
            children: [
              Text(
                teamOneStat,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w600, color: AppThemes.oWhite600),
              ),
              const Spacer(),
              Text(
                statName,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Spacer(),
              Text(
                teamTwoStat,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w600, color: AppThemes.oWhite600),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 165.w,
              height: 8.h,
              child: Transform.flip(
                flipY: true,
                flipX: true,
                child: LinearProgressIndicator(
                  value: teamOneLinearStatValue,
                  backgroundColor: AppThemes.tabBarBackGround,
                  valueColor: const AlwaysStoppedAnimation(AppThemes.coral500),
                  borderRadius: BorderRadius.circular(6.w),
                ),
              ),
            ),
            SizedBox(
              width: 14.w,
            ),
            SizedBox(
              width: 170.w,
              height: 8.h,
              child: LinearProgressIndicator(
                value: teamTwoLinearStatValue,
                backgroundColor: AppThemes.tabBarBackGround,
                valueColor: const AlwaysStoppedAnimation(AppThemes.coral500),

                borderRadius: BorderRadius.circular(6.w),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
