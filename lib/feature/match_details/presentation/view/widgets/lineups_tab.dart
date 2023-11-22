import 'package:flutter/material.dart';

class LineUpsTab extends StatelessWidget {
  const LineUpsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/Lineups.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),

      ],
    );
  }
}
