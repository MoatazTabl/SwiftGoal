import 'package:flutter/material.dart';
import '../widgets/match_stat.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
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
