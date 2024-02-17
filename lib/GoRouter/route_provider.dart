import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'package:vacationvproject/GoRouter/go_router_home.dart';

final routesProvider = Provider<GoRouter>((ref){
  return GoRouter(routes: appRoutes,initialLocation: RouteNames.home,navigatorKey: navigationKey);
});