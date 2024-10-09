import '../route_paths/route_paths.dart';

class RouteNames {
  static const String loading = RoutePaths.loading;
  static const String login = '${RoutePaths.loading}${RoutePaths.login}';
  static const String register = '${RoutePaths.loading}${RoutePaths.register}';
  static const String category = RoutePaths.category;
  static const String addCategory = '${RoutePaths.category}${RoutePaths.addCategory}';
}