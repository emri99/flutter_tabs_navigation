import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:tab_nav/router/tab_navigation.dart';

extension AutoRouteCustomExtension on BuildContext {
  // _tabRouteIndex(String tabRouteName) => BottomBarConfigurationDefinition.indexOfNamed(tabRouteName);

  pushRootRoute(PageRouteInfo route) {
    router.root.push(route);
  }

  pushTabRoute(String tabRouteName, PageRouteInfo route) {
    tabsRouter.setActiveName(tabRouteName);

    StackRouter router = tabsRouter.innerRouterOf<StackRouter>(tabRouteName);
    RouteData tabCurrentRoute = router.current;
    if (tabCurrentRoute.path != route.path) {
      router.push(route);
    }
  }
}

extension TabsRouterX on TabsRouter {
  setActiveName(String tabRouteName) {
    final int selectedIndex = this._tabRouteIndex(tabRouteName);
    if (-1 != selectedIndex) {
      setActiveIndex(selectedIndex);
    }
  }

  _tabRouteIndex(String tabRouteName) => TabNavigationConfiguration.indexOfNamed(tabRouteName);
}
