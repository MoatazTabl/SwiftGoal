import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_theme.dart';

class MatchStats extends StatelessWidget {
  const MatchStats({
    super.key,
    required this.statName,
    required this.teamOneStat,
    required this.teamTwoStat,
    required this.teamOneLinearStatValue,
    required this.teamTwoLinearStatValue,
  });

  final String statName;
  final double teamOneLinearStatValue;
  final double teamTwoLinearStatValue;
  final String teamOneStat;
  final String teamTwoStat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
           EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h, bottom: 16.h),
          child: Row(
            children: [
              Text(
                teamOneStat,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w600, color: AppThemes.oWhite600),
              ),
              const Spacer(),
              Text(
                statName,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Spacer(),
              Text(
                teamTwoStat,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w600, color: AppThemes.oWhite600),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 165.w,
              height: 8.h,
              child: Transform.flip(
                flipY: true,
                flipX: true,
                child: LinearProgressIndicator(
                  value: teamOneLinearStatValue,
                  backgroundColor: AppThemes.tabBarBackGround,
                  valueColor: const AlwaysStoppedAnimation(AppThemes.coral500),
                  borderRadius: BorderRadius.circular(6.w),
                ),
              ),
            ),
            SizedBox(
              width: 14.w,
            ),
            SizedBox(
              width: 165.w,
              height: 8.h,
              child: LinearProgressIndicator(
                value: teamTwoLinearStatValue,
                backgroundColor: AppThemes.tabBarBackGround,
                valueColor: const AlwaysStoppedAnimation(AppThemes.coral500),

                borderRadius: BorderRadius.circular(6.w),
              ),
            ),
          ],
        ),
      ],
    );
  }
}