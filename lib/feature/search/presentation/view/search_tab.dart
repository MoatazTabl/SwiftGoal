import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/feature/search/presentation/view/widgets/custom_search_text_field.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45),
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
                  image:
                      const AssetImage("assets/images/icons/football-icon.png"),
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
        ],
      ),
    );
  }
}
