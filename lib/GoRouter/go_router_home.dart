import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vacationvproject/GoRouter/route_provider.dart';
import 'package:vacationvproject/GoRouter/screens/screen1.dart';
import 'screens/screen2.dart';

final navigationKey = GlobalKey<NavigatorState>();

final appRoutes = [
  GoRoute(
      path: RouteNames.home,
      parentNavigatorKey: navigationKey,
      builder: Screen1.builder),
  GoRoute(
      path: RouteNames.screen2,
      parentNavigatorKey: navigationKey,
      builder: Screen2.builder),
];

class RouteNames {
  // static const home = '/';
  static const home = '/';
  static const screen2 = '/screen2';
  // static const screen1 = '/screen1';
}


class GoRouterApp extends ConsumerWidget {
  const GoRouterApp({super.key});
  // static GoRouterApp builder(BuildContext context, GoRouterState state) => GoRouterApp();
  @override
  Widget build(BuildContext context,WidgetRef ref) {
     final routeConfig = ref.watch(routesProvider);
    return MaterialApp.router(
      routerConfig: routeConfig,
    );
  }
}
