import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/app_theme.dart';

class PlayerQuickInfo extends StatelessWidget {
  const PlayerQuickInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppThemes.tabBarBackGround,
        borderRadius: BorderRadius.circular(16.w),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                "7",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: AppThemes.coral500, fontSize: 20),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "Cristiano Ronaldo",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(fontSize: 20),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "https://tmssl.akamaized.net/images/wappen/head/18544.png?lm=1693570524",
                height: 40.h,
                width: 40.h,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                width: 10.w,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 9.0.h),
                  child: Text(
                    "Al Nasser",
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      color: AppThemes.coral500,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Age: 38",
                    ),
                    Text(
                      "Height: 186",
                    ),
                    Text(
                      "Weight: 86",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Position: Attacker",
                    ),
                    Row(
                      children: [
                        const Text(
                          "Country:  ",
                        ),
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.network(
                              "https://www.worldatlas.com/img/flag/pt-flag.jpg"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
