import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/feature/search/presentation/view/widgets/player_item.dart';

class PlayersTab extends StatelessWidget {
  const PlayersTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Coach"),
            const PlayerItem(),
            SizedBox(
              height: 10.h,
            ),
            const Text("Goal Keepers"),
            ListView.builder(
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: PlayerItem(),
                );
              },
              itemCount: 3,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text("Defenders"),
            ListView.builder(
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: PlayerItem(),
                );
              },
              itemCount: 5,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text("Midfielders"),
            ListView.builder(
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: PlayerItem(),
                );
              },
              itemCount: 5,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text("Attackers"),
            ListView.builder(
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: PlayerItem(),
                );
              },
              itemCount: 5,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            )
          ],
        ),
      ),
    );
  }
}
