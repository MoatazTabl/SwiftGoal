import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/app_theme.dart';

class MatchDetailsTopBar extends StatelessWidget {
  const MatchDetailsTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppThemes.neutral400,
          ),
        ),
        SizedBox(
          width: .215.sw,
        ),
        Column(
          children: [
            Text(
              "English Premier League",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              "Sunday, 3 September 2023 at 20:00",
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          isSelected: true,
          padding: EdgeInsets.zero,
          icon: Icon(
            Icons.star,
            color: AppThemes.oWhite300,
          ),
          selectedIcon: const Icon(
            Icons.star,
            color: AppThemes.coral400,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share),
          color: AppThemes.oNeutral400,
          padding: EdgeInsets.zero,
        ),
      ],
    );
  }
}
