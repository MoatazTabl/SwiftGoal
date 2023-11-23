import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamTwoPlayer extends StatelessWidget {
  const TeamTwoPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60.h,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blue, borderRadius:BorderRadius.circular(50)),
            width: 30,
            height: 30,
            child: Center(child: Text("10")),
          ),
          Text("Messi"),
        ],
      ),
    );
  }
}
