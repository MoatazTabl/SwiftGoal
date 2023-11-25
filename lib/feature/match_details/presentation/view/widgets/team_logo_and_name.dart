import 'package:flutter/material.dart';

class TeamLogo extends StatelessWidget {
  const TeamLogo({
    super.key, required this.teamLogo,
  });

  final String teamLogo;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      teamLogo,

    );
  }
}
