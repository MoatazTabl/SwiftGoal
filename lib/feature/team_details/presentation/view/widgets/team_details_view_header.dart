import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/app_theme.dart';

class TeamDetailsViewHeader extends StatelessWidget {
  const TeamDetailsViewHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        color: Color(0xff2F283B),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xff9890A6),
                    size: 18,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.star, color: AppThemes.oWhite300),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share_outlined),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.h,
                      child: Image.asset(
                          "assets/images/Manchester_City_FC_logo.png"),
                    ),
                    Text("Manchester City"),
                  ],
                )
              ],
            ),
            SizedBox(height: 15.h,),

          ],
        ),
      ),
    );
  }
}
