import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_text_style.dart';
import '../../../../../core/app_theme.dart';

class TrophiesList extends StatelessWidget {
  const TrophiesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.w),
        color: const Color(0xff262626),

      ),
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                "https://tmssl.akamaized.net/images/wappen/head/18544.png?lm=1693570524",
                height: 35.h,
                width: 35.h,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Al Nasser Fc",
                  ),
                  Text(
                    "Saudi Arabia",
                    style:
                    AppTextTheme.appTextThemeLight.headlineMedium!.copyWith(
                      color: AppThemes.oWhite600,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 5.h,),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Color(0xff262626),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                const Text(
                  "2",
                ),
                SizedBox(
                  width: 20.w,
                ),
                Image.network(
                  "https://www.soccerzz.com/img/logos/edicoes/126930_imgbank_.png",
                  height: 30.h,
                  width: 30.w,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Arab Club Champions Cup  ",
                  style: AppTextTheme.appTextThemeLight.headlineMedium,
                ),
                Text(
                  "(2023)",
                  style: AppTextTheme.appTextThemeLight.headlineSmall!
                      .copyWith(color: AppThemes.oWhite600),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Color(0xff262626),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                const Text(
                  "2",
                ),
                SizedBox(
                  width: 20.w,
                ),
                Image.network(
                  "https://www.soccerzz.com/img/logos/edicoes/126930_imgbank_.png",
                  height: 30.h,
                  width: 30.w,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Arab Club Champions Cup  ",
                  style: AppTextTheme.appTextThemeLight.headlineMedium,
                ),
                Text(
                  "(2023)",
                  style: AppTextTheme.appTextThemeLight.headlineSmall!
                      .copyWith(color: AppThemes.oWhite600),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,)
        ],
      ),
    );
  }
}
