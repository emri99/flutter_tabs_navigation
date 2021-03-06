import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tab_nav/router/app_router.gr.dart';

typedef BottomNavigationBarItemBuilder = BottomNavigationBarItem Function(BuildContext context);

class TabNavigationItem {
  final PageRouteInfo tab;
  // final WidgetBuilder bottomBarItemBuilder;
  final BottomNavigationBarItemBuilder bottomBarItemBuilder;

  const TabNavigationItem({
    @required this.tab,
    @required this.bottomBarItemBuilder,
  });
}

class TabNavigationConfiguration {
  static List<TabNavigationItem> items = [];
  static int indexOfNamed(String name) => items.indexWhere(
        (element) => element.tab.routeName == name,
      );
  static initialise([List<TabNavigationItem> itemConfigList]) {
    items = itemConfigList ?? _defaultItems;
  }
}

List<TabNavigationItem> _defaultItems = TabNavigationConfiguration.items = <TabNavigationItem>[
  TabNavigationItem(
    tab: HomeTab(),
    bottomBarItemBuilder: (BuildContext context) => BottomNavigationBarItem(
      label: 'Home',
      icon: Icon(Icons.home),
    ),
  ),
  TabNavigationItem(
    tab: DocumentsTab(),
    bottomBarItemBuilder: (BuildContext context) => BottomNavigationBarItem(
      label: 'Products',
      icon: Icon(CupertinoIcons.infinite),
    ),
  ),
  TabNavigationItem(
    tab: FavoritesTab(),
    bottomBarItemBuilder: (BuildContext context) => BottomNavigationBarItem(
      label: 'Favorites',
      icon: Icon(Icons.favorite),
    ),
  ),
  TabNavigationItem(
    tab: ProfileTab(),
    bottomBarItemBuilder: (BuildContext context) => BottomNavigationBarItem(
      label: 'Profile',
      icon: Icon(Icons.person),
    ),
  ),
];
