import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_theme.dart';

class MatchItem extends StatelessWidget {
  String teamLogo1;
  String teamName1;
  String teamResult1;
  String teamLogo2;
  String teamName2;
  String teamResult2;

  MatchItem(
      {super.key,
      required this.teamLogo1,
      required this.teamName1,
      required this.teamResult1,
      required this.teamLogo2,
      required this.teamName2,
      required this.teamResult2});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        height: 60.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white12, borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  color: Color(0x4CFFFFFE)),
              width: 48.w,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("4'"), Text("FT")],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: SizedBox(
                width: 264.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(teamLogo1),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(teamName1),
                        const Spacer(),
                        Text(teamResult1),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(teamLogo2),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(teamName2),
                        const Spacer(),
                        Text(teamResult2),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star,),
              color: AppThemes.coral400,
            )
          ],
        ),
      ),
    );
  }
}
