import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/feature/match_details/presentation/view/tabs/lineups_tab.dart';
import 'package:swift_goal/feature/match_details/presentation/view/tabs/overview_tab.dart';
import 'package:swift_goal/feature/match_details/presentation/view/tabs/stats_tab.dart';
import 'widgets/custom_page_header.dart';
import 'widgets/match_detail_tab_bar_sliver.dart';

class MatchDetails extends StatefulWidget {
  const MatchDetails({super.key});

  @override
  State<MatchDetails> createState() => _MatchDetailsState();
}

class _MatchDetailsState extends State<MatchDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: NotificationListener<ScrollUpdateNotification>(
            onNotification: (notification) {
              return true;
            },
            child: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  floating: false,
                  delegate: CustomPageHeader(
                      collapsedHeight: 46.h,
                      expandedHeight: 141.h,
                      teamOneName: 'LiverPool',
                      teamTwoName: 'AstonVilla',
                      teamTwoLogo: "assets/images/img.png",
                      teamOneLogo: "assets/images/Manchester_City_FC_logo.png"),
                ),
               SliverPersistentHeader(delegate: MatchDetailTabBarSliver(),pinned: true,floating: false,),
                const SliverFillRemaining(
                  child: TabBarView(children: [
                    OverViewTab(),
                    LineUpsTab(),
                    StatsTab(),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
