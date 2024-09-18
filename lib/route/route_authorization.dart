import 'package:auto_route/auto_route.dart';
import 'package:one_word/extensions/extension.dart';

import '../dependencies.dart';
import '../utility/utility.dart';
import 'route.dart';

class AuthorizationBuilder {
  static Map<String, RouteAuthorization> map = {
    RouteKeys.welcome: RouteAuthorization(roles: [], permissions: []),
    RouteKeys.home: RouteAuthorization(roles: [], permissions: []),
  };
}

// class AuthGuard extends AutoRouteGuard {
//   final utility = AppDependencies.injector.get<AuthenticationUtility>();

//   @override
//   Future<void> onNavigation(
//       NavigationResolver resolver, StackRouter router) async {
//     resolver.next(true);
//   }
// }

class AuthGuard extends AutoRouteGuard {
  final utility = AppDependencies.injector.get<AuthenticationUtility>();

  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    // var path = resolver.route.path;
    // var auth = AuthorizationBuilder.map[path];
    // if (auth == null) {
    //   resolver.next(true);
    //   return;
    // }

    if (!(await utility.authenticated)) {
      await router.pushAndPopUntil(const LoginRoute(), predicate: (_) => false);
      return;
    }

    // final function = path.toRouteName();
    // var hasRight = await utility.hasRights(
    //   function: function,
    //   permissions: auth.permissions,
    //   roles: auth.roles,
    // );
    // if (!hasRight) {
    //   await router.pushNamed(RouteKeys.unAuthorization);
    //   return;
    // }
    resolver.next(true);
  }
}
