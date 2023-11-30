import 'package:flutter/material.dart';

import '../../../../../core/app_text_style.dart';
import '../../../../../core/app_theme.dart';

class CurrentSeasonStats extends StatelessWidget {
  const CurrentSeasonStats({
    super.key,
    required this.statNum,
    required this.statName,
  });

  final String statNum;
  final String statName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          statNum,
          style: AppTextTheme.appTextThemeLight.headlineLarge,
        ),
        Text(
          statName,
          style: AppTextTheme.appTextThemeLight.headlineMedium!
              .copyWith(color: AppThemes.oWhite600),
        ),
      ],
    );
  }
}