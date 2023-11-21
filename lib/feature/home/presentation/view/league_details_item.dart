import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeagueDetailsItem extends StatelessWidget {
  String leagueLogo;
  String leagueName;
  String countryLogo;
  String countryName;

  LeagueDetailsItem(
      {super.key, required this.leagueLogo,
      required this.leagueName,
      required this.countryLogo,
      required this.countryName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(leagueLogo),
        SizedBox(
          width: 12.w,
        ),
        Text(leagueName),
        SizedBox(
          width: 8.w,
        ),
        Image.asset(countryLogo),
        SizedBox(
          width: 8.w,
        ),
        Text(countryName),
        Spacer(),
        Icon(Icons.arrow_right)
      ],
    );
  }
}
