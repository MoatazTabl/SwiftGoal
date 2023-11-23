import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchHalfAnnouncement extends StatelessWidget {
  const MatchHalfAnnouncement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            "FT 2-0",
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}