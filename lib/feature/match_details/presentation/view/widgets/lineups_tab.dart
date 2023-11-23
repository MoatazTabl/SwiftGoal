import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/feature/match_details/presentation/view/widgets/team_one_player.dart';
import 'package:swift_goal/feature/match_details/presentation/view/widgets/team_two_player.dart';

class LineUpsTab extends StatelessWidget {
  const LineUpsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/Lineups.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TeamOnePlayer(),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamOnePlayer(),
                TeamOnePlayer(yellowCard: true,redCard: true),
                TeamOnePlayer(),
                TeamOnePlayer(yellowCard: true),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TeamOnePlayer(substitution: true),
                  TeamOnePlayer(redCard: true),
                  TeamOnePlayer(),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamOnePlayer(),
                TeamOnePlayer(),
                TeamOnePlayer(yellowCard: true),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamTwoPlayer(),
                TeamTwoPlayer(yellowCard: true),
              ],
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamTwoPlayer(yellowCard: true),
                TeamTwoPlayer(),
                TeamTwoPlayer(),
                TeamTwoPlayer(),
              ],
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamTwoPlayer(),
                TeamTwoPlayer(redCard: true),
                TeamTwoPlayer(),
                TeamTwoPlayer(yellowCard: true,redCard: true),
              ],
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TeamTwoPlayer(),
              ],
            )
          ],
        ),
      ],
    );
  }
}
