import 'package:auto_route/auto_route.dart';
import '../extensions/extension.dart';

import '../route/router.dart';
import 'authentication_utility.dart';

import '../dependencies.dart';

class RouteUtils {
  final _authUtils = AppDependencies.injector.get<AuthenticationUtility>();
  final _appRouter = AppDependencies.injector.get<AppRouter>();

  List<RouteMatch> get segments {
    return _appRouter.navigationHistory.urlState.segments;
  }

  String get getCurrentPath {
    return segments.reversed
            .firstOrDefault(
              (r) => r.path.isNotNullOrEmpty,
            )
            ?.path ??
        '';
  }

  Future<bool> hasPermissionForRoute(String action) async {
    final function = getCurrentPath.toRouteName();
    return _authUtils.hasPermission(function, action);
  }

  bool checkContainRoute(String path) {
    return segments.any((r) => r.path == path);
  }
}
