import 'package:getx_clean_architecture_v2/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';


class AppRouter {
  final GoRouter _router =
      GoRouter(debugLogDiagnostics: true, initialLocation: '/', routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ]);

  GoRouter get router => _router;
}
