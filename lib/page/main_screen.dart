import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:one_word/route/route.dart';

import '../dependencies.dart';
import '../models/data/data.dart';
import '../style/style.dart';
import '../utility/utility.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<NavigationModel> tabsRouter = RouteContants.navigationTabs;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final destinations = tabsRouter.map((nav) => nav.destination).toList();
    return AutoTabsRouter(
      routes: destinations,
      builder: (context, child) {
        final tab = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: Dimens.size60,
            leadingWidth: Dimens.size180,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.spacing),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'hello'.tr(),
                    style: theme.primaryTextTheme.headlineMedium,
                  ),
                  Text(
                    'slogan'.tr(),
                    style: theme.primaryTextTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(Dimens.size4),
              topLeft: Radius.circular(Dimens.size4),
            ),
            child: BottomNavigationBar(
              currentIndex: tab.activeIndex,
              onTap: (value) {
                tab.setActiveIndex(value);
              },
              items: [
                BottomNavigationBarItem(
                  icon: tabsRouter[0].icon ?? const Icon(Icons.home),
                  label: tabsRouter[0].title,
                ),
                BottomNavigationBarItem(
                  icon: tabsRouter[1].icon ?? const Icon(Icons.home),
                  label: tabsRouter[1].title,
                ),
              ],
            ),
          ),
          body: child,
        );
      },
    );
  }
}
