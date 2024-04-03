import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/app_theme.dart';
import 'team_logo_and_name.dart';

class CustomPageHeader extends SliverPersistentHeaderDelegate {
  CustomPageHeader({
    required this.teamOneName,
    required this.teamTwoName,
    required this.teamTwoLogo,
    required this.teamOneLogo,
    required double collapsedHeight,
    required double expandedHeight,
  })  : minExtent = collapsedHeight,
        maxExtent = expandedHeight;

  @override
  final double minExtent;

  @override
  final double maxExtent;

  final String teamOneName;
  final String teamTwoName;
  final String teamOneLogo;

  final String teamTwoLogo;

  Widget teamLogoAndName(double scale, String teamName, String teamLogo) {
    double horizontal = 70.0.h * scale;
    horizontal = horizontal < 24.h ? 24.0.h : horizontal;

    double vertical = 70.0.h * scale;
    vertical = vertical < 24.h ? 24.0.h : vertical;
    return Center(
      child: AnimatedContainer(
        height: vertical,
        width: horizontal,
        duration: const Duration(
          seconds: 0,
        ),
        child: Column(
          children: [
            Expanded(
                child: TeamLogo(
                  teamLogo: teamLogo,
                )),
            AnimatedOpacity(
              opacity: scale < .5 ? 0 : scale,
              duration: const Duration(seconds: 0),
              child: Text(
                teamName,
                style: TextStyle(
                    fontSize: 12 * scale, fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    const backgroundColor = AppThemes.neutral800;
    final scale = 1 - shrinkOffset / maxExtent;
    // final isReduced = shrinkOffset >= maxExtent * 0.12;

    return Container(
      padding: const EdgeInsets.only(
        left: 2,
        top: 1,
        bottom: 1,
      ),
      color: backgroundColor,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xff9890A6),
                  size: 18,
                ),
              ),
              const Spacer(),
              AnimatedOpacity(
                opacity: scale < .4 ? 0 : scale,
                duration: const Duration(seconds: 0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.star, color: AppThemes.oWhite300),
                ),
              ),
              AnimatedOpacity(
                opacity: scale < .4 ? 0 : scale,
                duration: const Duration(seconds: 0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share_outlined),
                ),
              ),
            ],
          ),
          Padding(
            padding:
            EdgeInsets.only(top: 30.h * scale < 11.h ? 0 : 30.h * scale),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                teamLogoAndName(scale, teamOneName, teamOneLogo),
                SizedBox(
                  width: scale * 75.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedOpacity(
                        opacity: scale < .6 ? 0 : scale,
                        duration: const Duration(
                          seconds: 0,
                        ),
                        child: Text(
                          "Full Time",
                          style: TextStyle(
                            fontSize: 12 * scale,
                          ),
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(
                          seconds: 0,
                        ),
                        width: 25.w,
                        height: 24.h,
                        child: const Text(
                          "3-0",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      AnimatedOpacity(
                        opacity: scale < .6 ? 0 : scale,
                        duration: const Duration(
                          seconds: 0,
                        ),
                        child: Text(
                          "HT 2-0",
                          style: TextStyle(
                            fontSize: 12 * scale,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: scale * 75.w,
                ),
                teamLogoAndName(scale, teamTwoName, teamTwoLogo),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(oldDelegate) => true;
}