import 'package:flutter_package_plus/go_router/go_router.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter goRouter = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        name: '/home',
        builder: (context, state) {
          return const GoRouterFlutter();
        },
      ),
      GoRoute(
        path: '/go',
        name: '/go',
        builder: (context, state) {
          return const GoPage();
        },
      ),

      
    ],
  );
}
