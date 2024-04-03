import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_theme.dart';

class MatchHalfAnnouncement extends StatelessWidget {
  const MatchHalfAnnouncement({
    super.key, required this.score, required this.detail,
  });

  final String score;
  final String detail;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Container(
            width: double.infinity,
            height: 28.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.w),
              ),
              color: const Color(0xff5D5669).withOpacity(.48),
            ),
            child: Center(
              child: Text(
                "$detail $score",
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}