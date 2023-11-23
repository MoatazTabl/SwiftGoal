import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamTwoPlayer extends StatelessWidget {
  const TeamTwoPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/images/messi.jpg"),
                    fit: BoxFit.fill),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50)),
            width: 40,
            height: 40,
          ),
          const Text("Messi"),
        ],
      ),
    );
  }
}
