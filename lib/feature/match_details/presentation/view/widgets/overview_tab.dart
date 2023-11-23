import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_theme.dart';
import 'match_half_announcement.dart';

class OverViewTab extends StatelessWidget {
  const OverViewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemes.oBlack,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: ImageIcon(
              AssetImage("assets/images/icons/whistle_icon.png"),
              color: AppThemes.coral400,
            ),
          ),
          MatchHalfAnnouncement(),
          MatchEvent(
            iconImg: 'assets/images/match_details_icons/subsection_icon.png',
            matchMin: '86',
            event1: 'In: Messi',
            event2: 'out: Halland',
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
          MatchEvent(
            iconImg: 'assets/images/match_details_icons/subsection_icon.png',
            matchMin: '86',
            event1: 'In: Ronaldo',
            event2: 'out: Salah', crossAxisAlignment: CrossAxisAlignment.end,
          ),
          MatchEvent(
            iconImg: 'assets/images/match_details_icons/goal_icon.png',
            matchMin: '80',
            event1: 'Goal!',
            event2: 'Moataz Tabl', crossAxisAlignment: CrossAxisAlignment.start,
          ),
        MatchEvent(
            iconImg: 'assets/images/match_details_icons/goal_icon.png',
            matchMin: '73',
            event1: 'Goal!',
            event2: "Moaz Omran", crossAxisAlignment: CrossAxisAlignment.end,
          ),
        MatchEvent(
            iconImg: 'assets/images/match_details_icons/own_goal_icon.png',
            matchMin: '60',
            event1: 'Own Goal!',
            event2: "Alaa Emad", crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ],
      ),
    );
  }
}

class MatchEvent extends StatelessWidget {
  const MatchEvent({
    super.key,
    required this.iconImg,
    required this.matchMin,
    required this.event1,
    required this.event2,
    required this.crossAxisAlignment,
  });

  final String iconImg;
  final String matchMin;
  final String event1;
  final String event2;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.only(
              top: 2,
              bottom: 4,
            ),
            color: AppThemes.oNeutral400.withOpacity(.48),
            height: 12.h,
            width: 2,
          ),
        ),
        Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Image.asset(
                  iconImg,
                  height: 20.h,
                  width: 20.h,
                ),
              ),
              Text(
                matchMin,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                event1,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                event2,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w600, color: AppThemes.oWhite600),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
