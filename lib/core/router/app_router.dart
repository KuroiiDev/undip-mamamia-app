import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/admin/presentation/admin_dashboard_screen.dart';
import '../../features/auth/presentation/banned_screen.dart';
import '../../features/auth/presentation/login_screen.dart';
import '../../features/auth/presentation/register_screen.dart';
import '../../features/auth/presentation/splash_screen.dart';
import '../../features/auth/providers/session_provider.dart';
import '../../features/favorite/presentation/favorite_screen.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/map/presentation/map_screen.dart';
import '../../features/merchant/presentation/merchant_dashboard_screen.dart';
import '../../features/profile/presentation/profile_screen.dart';
import '../../features/restaurant/presentation/restaurant_detail_screen.dart';
import '../../features/search/presentation/search_screen.dart';
import '../../features/user_shell/presentation/user_shell.dart';
import 'routes.dart';

part 'app_router.g.dart';

class _RouterNotifier extends ChangeNotifier {
  _RouterNotifier(Ref ref) {
    ref.listen(sessionProvider, (_, _) => notifyListeners());
  }
}

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  final notifier = _RouterNotifier(ref);

  return GoRouter(
    initialLocation: Routes.splash,
    refreshListenable: notifier,
    redirect: (context, state) {
      final session = ref.read(sessionProvider);
      final status = session.status;
      final location = state.uri.path;

      final isAuthRoute =
          location == Routes.login || location == Routes.register;

      if (status == SessionStatus.unknown) {
        return location == Routes.splash ? null : Routes.splash;
      }

      if (status == SessionStatus.banned) {
        return location == Routes.banned ? null : Routes.banned;
      }

      if (status == SessionStatus.loggedOut) {
        return isAuthRoute ? null : Routes.login;
      }

      // Logged in
      final role = session.user?.role;

      if (isAuthRoute ||
          location == Routes.splash ||
          location == Routes.banned) {
        if (role == 'merchant') return Routes.merchantDashboard;
        if (role == 'admin') return Routes.adminDashboard;
        return Routes.home;
      }

      // Role isolation
      if (location.startsWith('/merchant') && role != 'merchant') {
        return Routes.home;
      }
      if (location.startsWith('/admin') && role != 'admin') {
        return Routes.home;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: Routes.register,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: Routes.banned,
        builder: (context, state) => const BannedScreen(),
      ),
      GoRoute(
        path: Routes.search,
        builder: (context, state) => SearchScreen(
          initialCategoryId: state.uri.queryParameters['category'],
        ),
      ),
      GoRoute(
        path: Routes.restaurantDetail,
        builder: (context, state) => RestaurantDetailScreen(
          id: state.pathParameters['id']!,
        ),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => UserShell(navigationShell: shell),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
              path: Routes.home,
              builder: (context, state) => const HomeScreen(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: Routes.map,
              builder: (context, state) => const MapScreen(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: Routes.favorites,
              builder: (context, state) => const FavoriteScreen(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: Routes.profile,
              builder: (context, state) => const ProfileScreen(),
            ),
          ]),
        ],
      ),
      GoRoute(
        path: Routes.merchantDashboard,
        builder: (context, state) => const MerchantDashboardScreen(),
      ),
      GoRoute(
        path: Routes.adminDashboard,
        builder: (context, state) => const AdminDashboardScreen(),
      ),
    ],
  );
}
