import 'package:flutter/material.dart';

import '../../../../../core/app_theme.dart';
import 'match_detail_tab_bar.dart';

class MatchDetailTabBarSliver extends SliverPersistentHeaderDelegate {


  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(padding: const EdgeInsets.all(2),color: AppThemes.mainDarkGrey,child: const MatchDetailTabBar());
  }

  @override
  final double maxExtent=29;

  @override
  final double minExtent=26;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}