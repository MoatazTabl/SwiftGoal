import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return Stack(
      children: [
        SizedBox(
          height: 70.h,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/messi.jpg"),
                        fit: BoxFit.fill),
                    color: Colors.blue,
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
      ],
    );
  }
}
