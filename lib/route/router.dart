import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../page/page.dart';
import 'route_authorization.dart';
import 'route_keys.dart';

part 'router.gr.dart';

@RoutePage(name: 'EmptyRouter')
class EmptyRouterPage extends AutoRouter {
  const EmptyRouterPage({super.key});
}

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: RouteKeys.welcome,
          page: MainRoute.page,
          children: [
            CustomRoute(
              // transitionsBuilder: TransitionsBuilders.noTransition,
              path: RouteKeys.home,
              page: DashBoardRoute.page,
              guards: [AuthGuard()],
              initial: true,
              // children: [
              //   CustomRoute(
              //     path: '',
              //     page: DashBoardRoute.page,
              //   ),
              // ],
            ),
            CustomRoute(
              // transitionsBuilder: TransitionsBuilders.noTransition,
              path: RouteKeys.chat,
              page: ChatRoute.page,
              guards: [AuthGuard()],
              // children: [
              //   CustomRoute(
              //     path: '',
              //     page: ChatRoute.page,
              //   ),
              // ],
            ),
          ],
        ),
        AutoRoute(
          path: RouteKeys.login,
          page: LoginRoute.page,
        ),
        AutoRoute(path: '*', page: NotFoundRoute.page),
      ];
}
