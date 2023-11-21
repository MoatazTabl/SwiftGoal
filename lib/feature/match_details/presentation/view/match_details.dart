import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/core/app_theme.dart';

class MatchDetails extends StatelessWidget {
  const MatchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color(0xff2F283B),
          height: 140.h,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(

                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: AppThemes.neutral400,
                    ),
                  ),
                  const Spacer(),
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
                    icon: Icon(
                      Icons.star,
                      color: AppThemes.oWhite300,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share),
                    color: AppThemes.oNeutral400,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
