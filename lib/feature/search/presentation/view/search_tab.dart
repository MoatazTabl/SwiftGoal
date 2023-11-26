import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/feature/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:swift_goal/feature/search/presentation/view/widgets/leagues_list_view.dart';
import 'package:swift_goal/feature/search/presentation/view/widgets/matches_listview.dart';
import 'package:swift_goal/feature/search/presentation/view/widgets/teams_list_view.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:  45),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
             Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Matches",style: Theme.of(context).textTheme.headlineLarge,),
            ),
           const MatchesListView(),
            SizedBox(height: 30.h,),
             Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text("Teams",style: Theme.of(context).textTheme.headlineLarge,),
            ),
           const TeamsListView(),
            SizedBox(height: 30.h,),
             Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Leagues",style: Theme.of(context).textTheme.headlineLarge,),
            ),
            const LeaguesListView(),
          ],
        ),
      ),
    );
  }
}
