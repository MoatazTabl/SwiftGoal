import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_theme.dart';

class TeamTwoPlayer extends StatelessWidget {
  final bool yellowCard;

  final bool redCard;
  final bool substitution;

  const TeamTwoPlayer(
      {super.key,
      this.yellowCard = false,
      this.redCard = false,
      this.substitution = false});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 70.h,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/messi.jpg",
                      ),
                      fit: BoxFit.fill),
                  color: AppThemes.coral500,
                  borderRadius: BorderRadius.circular(50)),
              width: 40,
              height: 40,
            ),
            const Text("10-Messi"),
          ],
        ),
      ),
      yellowCard ^ redCard
          ? ImageIcon(
        size: 15,
        AssetImage(yellowCard
            ? "assets/images/match_details_icons/yellow_card_icon.png"
            : "assets/images/match_details_icons/red_card_icon.png"),
        color: yellowCard ? Colors.yellow : Colors.red,
      )
          : Container(),
      yellowCard & redCard
          ? Positioned(
        left: 0,
        child: SizedBox(
          height: 20.h,
          width: 20.h,
          child: Image.asset(
              "assets/images/match_details_icons/yellow_and_red_card_icon.png"),
        ),
      )
          : Container(),
      substitution
          ? const Positioned(
        left: 40,
        child: Image(
          height: 20,
          width: 20,
          image: AssetImage(
              "assets/images/match_details_icons/subsection_icon.png"),
        ),
      )
          : Container(),
    ]);
  }
}
