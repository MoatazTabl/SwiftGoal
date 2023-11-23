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
                TeamOnePlayer(),
                TeamOnePlayer(),
                TeamOnePlayer(),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TeamOnePlayer(),
                  TeamOnePlayer(),
                  TeamOnePlayer(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TeamOnePlayer(),
                  TeamOnePlayer(),
                  TeamOnePlayer(),
                ],
              ),
            ),
            SizedBox(height: 30.h,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamTwoPlayer(),
                TeamTwoPlayer(),
              ],
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TeamTwoPlayer(),
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
                TeamTwoPlayer(),
                TeamTwoPlayer(),
                TeamTwoPlayer(),
              ],
            ),
            const Spacer(),
            const TeamTwoPlayer()
          ],
        ),
      ],
    );
  }
}
