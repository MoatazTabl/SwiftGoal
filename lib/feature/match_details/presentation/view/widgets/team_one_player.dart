import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/core/app_theme.dart';

class TeamOnePlayer extends StatelessWidget {
  const TeamOnePlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70.h,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(image: const DecorationImage(image: AssetImage("assets/images/ronaldo.webp",),fit: BoxFit.fill),color: AppThemes.coral500, borderRadius:BorderRadius.circular(50)),
            width: 40,
            height: 40,
          ),
          const Text("Ronaldo"),
        ],
      ),
    );
  }
}
