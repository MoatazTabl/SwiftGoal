import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/feature/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:swift_goal/feature/search/presentation/view/widgets/search_tab_bar.dart';
import 'package:swift_goal/feature/search/presentation/view/widgets/search_tabs/matches_tab.dart';
import 'package:swift_goal/feature/search/presentation/view/widgets/search_tabs/teams_tap.dart';
import 'package:swift_goal/feature/search/presentation/view/widgets/search_team_item.dart';

import '../../../home/presentation/view/widgets/league_matches.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45),
      child: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Image(
                    height: 24.h,
                    width: 16.w,
                    image: const AssetImage(
                        "assets/images/icons/football-icon.png"),
                  ),
                ),
                SizedBox(
                  height: 28.h,
                  width: 300.w,
                  child: const CustomSearchTextField(),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const Row(
              children: [
                SearchTabBar(),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                const Icon(Icons.save),
               const MatchesTap(),
                TeamsTap(),
                const Icon(
                  Icons.margin,
                ),
                const Icon(Icons.ac_unit_outlined),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
