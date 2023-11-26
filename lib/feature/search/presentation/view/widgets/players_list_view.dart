import 'package:flutter/material.dart';
import 'package:swift_goal/feature/search/presentation/view/widgets/player_item.dart';

class PlayersListView extends StatelessWidget {
  const PlayersListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: PlayerItem(),
        );
      },
      itemCount: 8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
