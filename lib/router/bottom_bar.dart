import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tab_nav/router/app_router.gr.dart';

class NavigationItemDefinition {
  // final String name;
  final PageRouteInfo tab;
  final BottomNavigationBarItem bottomBarItem;
  // final WidgetBuilder tabBuilder;

  NavigationItemDefinition({
    @required this.tab,
    // @required this.name,
    @required this.bottomBarItem,
    // @required this.tabBuilder,
  });
}

class BottomBarConfigurationDefinition {
  final List<NavigationItemDefinition> items;

  const BottomBarConfigurationDefinition(this.items);
}

var bottomBarConfiguration = BottomBarConfigurationDefinition(
  <NavigationItemDefinition>[
    NavigationItemDefinition(
      tab: HomeTab(),
      bottomBarItem: BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home),
      ),
    ),
    NavigationItemDefinition(
      tab: DocumentsTab(),
      bottomBarItem: BottomNavigationBarItem(
        label: 'Documents',
        icon: Icon(Icons.home),
      ),
    ),
    NavigationItemDefinition(
      tab: ProfileTab(),
      bottomBarItem: BottomNavigationBarItem(
        label: 'Profile',
        icon: Icon(Icons.home),
      ),
    ),
  ],
);
