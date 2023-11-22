import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/feature/match_details/presentation/view/widgets/overview_tab.dart';
import 'widgets/match_detail_tab_bar.dart';
import 'widgets/match_detail_top_bar.dart';
import 'widgets/team_logo_and_name.dart';

class MatchDetails extends StatelessWidget {
  const MatchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Container(
                color: const Color(0xff2F283B),
                height: 130.h,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const MatchDetailsTopBar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const TeamLogoAndName(),
                        Column(
                          children: [
                            Text(
                              "Full Time",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              "3-0",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "HT 2-0",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        const TeamLogoAndName(),
                      ],
                    ),
                  ],
                ),
              ),
              const MatchDetailTabBar(),
              const Expanded(
                child: TabBarView(
                
                
                    children: [
                  OverViewTab(),
                 Icon(
                    Icons.scale,
                  ),
                 Icon(
                    Icons.margin,
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
