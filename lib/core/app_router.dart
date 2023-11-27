import 'package:go_router/go_router.dart';
import 'package:swift_goal/feature/match_details/presentation/view/match_details.dart';
import 'package:swift_goal/main_screen.dart';

import '../feature/team_details/presentation/view/team_details_view.dart';

abstract class AppRouter {
  static const String kMatchDetails = '/match_details';
  static const String kTeamDetailsView = '/teamDetailsView';
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const MainScreen();
      },
    ),
    GoRoute(
      path: kMatchDetails,
      builder: (context, state) {
        return const MatchDetails();
      },
    ),
    GoRoute(
      path: kTeamDetailsView,
      builder: (context, state) {
        return const TeamDetailsView();
      },
    )
  ]);
}
