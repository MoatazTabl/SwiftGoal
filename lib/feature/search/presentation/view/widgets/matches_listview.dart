import 'package:flutter/material.dart';

import '../../../../home/presentation/view/widgets/match_item.dart';

class MatchesListView extends StatelessWidget {
  const MatchesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return  const Padding(
          padding: EdgeInsets.all(8.0),
          child: MatchItem(
              teamLogo1: "assets/images/liverpool_logo_test.png",
              teamName1: "Liverpool",
              teamResult1: "3",
              teamLogo2: "assets/images/astonvilla_logo_test.png",
              teamName2: "Astonvilla",
              teamResult2: "1"),
        );
      },
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
