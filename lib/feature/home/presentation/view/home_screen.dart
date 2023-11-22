import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/core/app_theme.dart';
import 'package:swift_goal/feature/home/presentation/view/widgets/home_view_tab_bar.dart';
import 'package:swift_goal/feature/home/presentation/view/widgets/league_matches.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: DefaultTabController(
        length: 4, // Number of tabs
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppThemes.tabBarBackGround,
                        borderRadius: BorderRadius.circular(16)),
                    width: 240.w,
                    height: 28.h,
                    child: const HomeViewTabBar(),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        chooseDate(context);
                      },
                      icon: const Icon(Icons.calendar_month))
                ],
              ),
              Expanded(
                child: TabBarView(
                    children: [
                      ListView.builder(
                        itemBuilder: (context, index) {
                          return const LeagueMatchesItem();
                        },
                        itemCount: 5,
                      ),
                      const Icon(Icons.error_outline),
                      const Icon(
                        Icons.scale,
                      ),
                      const Icon(
                        Icons.margin,
                      ),
                    ]),
              ),

            ],
          ),
        ),
      ),
    );
  }

  void chooseDate(BuildContext context) {
    showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 5)),
        initialDate: DateTime.now());
  }
}
