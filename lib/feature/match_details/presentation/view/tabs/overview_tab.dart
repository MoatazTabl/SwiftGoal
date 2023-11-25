import 'package:flutter/material.dart';

import '../../../../../core/app_theme.dart';
import '../widgets/match_event.dart';
import '../widgets/match_half_announcement.dart';

class OverViewTab extends StatelessWidget {
  const OverViewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemes.oBlack,
      child: const SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: ImageIcon(
                AssetImage("assets/images/icons/whistle_icon.png"),
                color: AppThemes.coral400,
              ),
            ),
            MatchHalfAnnouncement(detail: 'FT',score: '2-0',),
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
            MatchHalfAnnouncement(detail: 'HF',score: '2-1', ),
            MatchEvent(
              iconImg: 'assets/images/match_details_icons/own_goal_icon.png',
              matchMin: '60',
              event1: 'Own Goal!',
              event2: "Alaa Emad", crossAxisAlignment: CrossAxisAlignment.start,
            ),
            MatchHalfAnnouncement(detail: 'Start',score: '2-1', ),
          MatchHalfAnnouncement(detail: 'HF',score: '2-1', ),
            MatchEvent(
              iconImg: 'assets/images/match_details_icons/own_goal_icon.png',
              matchMin: '60',
              event1: 'Own Goal!',
              event2: "Alaa Emad", crossAxisAlignment: CrossAxisAlignment.start,
            ),
            MatchHalfAnnouncement(detail: 'Start',score: '2-1', ),
          MatchHalfAnnouncement(detail: 'HF',score: '2-1', ),
            MatchEvent(
              iconImg: 'assets/images/match_details_icons/own_goal_icon.png',
              matchMin: '60',
              event1: 'Own Goal!',
              event2: "Alaa Emad", crossAxisAlignment: CrossAxisAlignment.start,
            ),
            MatchHalfAnnouncement(detail: 'Start',score: '2-1', ),
           MatchHalfAnnouncement(detail: 'HF',score: '2-1', ),
            MatchEvent(
              iconImg: 'assets/images/match_details_icons/own_goal_icon.png',
              matchMin: '60',
              event1: 'Own Goal!',
              event2: "Alaa Emad", crossAxisAlignment: CrossAxisAlignment.start,
            ),
            MatchHalfAnnouncement(detail: 'Start',score: '2-1', ),
            MatchHalfAnnouncement(detail: 'Start',score: '2-1', ),
            MatchHalfAnnouncement(detail: 'Start',score: '2-1', ),
            MatchHalfAnnouncement(detail: 'Start',score: '2-1', ),
            MatchHalfAnnouncement(detail: 'Start',score: '2-1', ),
          ],
        ),
      ),
    );
  }
}


