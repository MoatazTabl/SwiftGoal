import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_theme.dart';

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