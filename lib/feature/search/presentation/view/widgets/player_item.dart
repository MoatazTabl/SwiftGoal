import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_theme.dart';

class PlayerItem extends StatelessWidget {
  const PlayerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to player details view
      },
      child: Container(
        height: 70.h,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppThemes.oBlack,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            SizedBox(
                width: 40.w,
                child: Image.asset("assets/images/messi.jpg")),
            SizedBox(
              width: 10.w,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Lionel Messi "),
                      Text(
                        "10",
                        style: TextStyle(color: AppThemes.oNeutral400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage("assets/images/country_icon_test.png"),
                      ),
                      Text("Argentina"),
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
