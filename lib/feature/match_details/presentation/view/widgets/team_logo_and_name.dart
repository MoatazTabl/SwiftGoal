import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app_theme.dart';

class TeamLogoAndName extends StatelessWidget {
  const TeamLogoAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: 10.h,),
        Image.asset(
          "assets/images/img.png",
          height: 40.h,
          width: 40.w,
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          "LiverPool",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
        ),

        IconButton(onPressed: (){}, icon: const Icon(Icons.star,size: 22),color: AppThemes.coral500,padding: EdgeInsets.zero,),
      ],
    );
  }
}