import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_nav/router/tab_navigation.dart';

class BottomNavigationView extends StatelessWidget {
  BottomNavigationView({Key key}) : super(key: key);

  @override
  Widget build(_) => AutoTabsRouter(
        routes: _routes,
        duration: Duration(milliseconds: 200),
        builder: (context, child, animation) {
          TabsRouter tabsRouter = context.tabsRouter;
          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              items: _buildBottomItemChildren(context),
            ),
          );
        },
      );

  get _routes => TabNavigationConfiguration.items.map((e) => e.tab).toList();

  _buildBottomItemChildren(BuildContext context) => TabNavigationConfiguration.items
      .map(
        (e) => e.bottomBarItemBuilder(context),
      )
      .toList(growable: false);
}
