import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/core/app_theme.dart';

class TeamOnePlayer extends StatelessWidget {
  final bool yellowCard;

  final bool redCard;
  final bool substitution;

  const TeamOnePlayer(
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
                        "assets/images/ronaldo.webp",
                      ),
                      fit: BoxFit.fill),
                  color: AppThemes.coral500,
                  borderRadius: BorderRadius.circular(50)),
              width: 40,
              height: 40,
            ),
            const Text("7-Ronaldo"),
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
          ? const Row(
              children: [
                ImageIcon(
                  size: 15,
                  AssetImage(
                      "assets/images/match_details_icons/yellow_card_icon.png"),
                  color: Colors.yellow,
                ),
                ImageIcon(
                  size: 15,
                  AssetImage(
                      "assets/images/match_details_icons/red_card_icon.png"),
                  color: Colors.red,
                ),
              ],
            )
          : Container(),
      substitution? const Positioned(
        left: 40,
        child: ImageIcon(
          color: Colors.green,
          size: 25,
          AssetImage(
              "assets/images/match_details_icons/subsection_icon.png"),
        ),
      ) : Container(),
    ]);
  }
}
