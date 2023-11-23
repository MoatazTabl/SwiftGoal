import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/core/app_theme.dart';

class TeamOnePlayer extends StatelessWidget {
  const TeamOnePlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60.h,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: AppThemes.coral500, borderRadius:BorderRadius.circular(50)),
            width: 30,
            height: 30,
            child: Center(child: Text("7")),
          ),
          Text("Ronaldo"),
        ],
      ),
    );
  }
}
