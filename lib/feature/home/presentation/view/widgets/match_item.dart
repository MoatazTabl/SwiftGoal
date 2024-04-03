import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_goal/core/app_router.dart';

import '../../../../../core/app_theme.dart';

class MatchItem extends StatelessWidget {
  final String teamLogo1;
 final String teamName1;
  final String teamResult1;
  final String teamLogo2;
  final String teamName2;
  final String teamResult2;

  const MatchItem(
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
        GoRouter.of(context).push(AppRouter.kMatchDetails);
      },
      child: Container(
        height: 60.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppThemes.oBlack, borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  color: AppThemes.oBlack6),
              width: 45.w,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("4'"), Text("FT")],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
              child: SizedBox(
                width: 255.w,
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
              iconSize: 20,
              onPressed: () {},
              icon: const Icon(
                Icons.star,
              ),
              color: AppThemes.coral400,
            )
          ],
        ),
      ),
    );
  }
}
