import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeagueDetailsItem extends StatelessWidget {
  final String leagueLogo;
  final String leagueName;
  final String countryLogo;
  final String countryName;

  const LeagueDetailsItem(
      {super.key,  required this.leagueLogo,
      required this.leagueName,
      required this.countryLogo,
      required this.countryName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Row(
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
          const Spacer(),
          const Icon(Icons.arrow_right)
        ],
      ),
    );
  }
}
