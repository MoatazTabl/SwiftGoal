import 'package:flutter/material.dart';

import '../../../../../core/app_theme.dart';

class OverViewTab extends StatelessWidget {
  const OverViewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ImageIcon(
          AssetImage("assets/images/icons/whistle_icon.png"),
          color: AppThemes.coral400,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
              width: double.infinity,
              color: const Color(0xff5D5669).withOpacity(.48),
              child: const Text("sad",textAlign: TextAlign.center,)),
        ),
      ],
    );
  }
}
