import 'package:go_router/go_router.dart';
import 'package:swift_goal/feature/match_details/presentation/view/match_details.dart';
import 'package:swift_goal/main_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const MainScreen();
      },
    ),
  GoRoute(
      path: "/match_details",
      builder: (context, state) {
        return const MatchDetails();
      },
    ),
  ]);
}
