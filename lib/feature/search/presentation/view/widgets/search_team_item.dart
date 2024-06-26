import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_goal/core/app_router.dart';

import '../../../../../core/app_theme.dart';

class SearchTeamItem extends StatelessWidget {
  const SearchTeamItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kTeamDetailsView);
      },
      child: Container(
        height: 70.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppThemes.oBlack, borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            SizedBox(
                width: 50.w,
                child: Image.asset("assets/images/real_madrid_logo_test.png")),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Real Madrid"),
                  Row(
                    children: [
                      ImageIcon(AssetImage("assets/images/country_icon_test.png"),),
                      Text("Spain"),
                    ],
                  )
                ],
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
