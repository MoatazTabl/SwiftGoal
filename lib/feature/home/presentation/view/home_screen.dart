import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/core/app_theme.dart';
import 'package:swift_goal/feature/home/presentation/view/widgets/league_matches.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: DefaultTabController(
        length: 4, // Number of tabs
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppThemes.tabBarBackGround,
                        borderRadius: BorderRadius.circular(16)),
                    width: 260.w,
                    child: TabBar(
                      labelStyle: TextTheme().bodySmall,
                      labelPadding: EdgeInsets.symmetric(horizontal: 0),
                      labelColor:AppThemes.coral400 ,
                      indicator: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)),
                      tabs: [
                        Tab(
                          text: 'All',
                        ),
                        Tab(text: 'LIVE'),
                        Tab(text: 'Upcoming'),
                        Tab(text: 'Finished'),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(onPressed: () {

                  }, icon: Icon(Icons.calendar_today))
                ],
              ),
              Divider(color: AppThemes.oNeutral400),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return LeagueMatchesItem();
                  },
                  itemCount: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
