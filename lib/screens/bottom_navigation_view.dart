import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tab_nav/router/app_router.gr.dart';

class BottomNavigationView extends StatelessWidget {
  BottomNavigationView({Key key}) : super(key: key);

  @override
  Widget build(_) => AutoTabsRouter(
        routes: [
          HomeTab(),
          DocumentsTab(),
          ProfileTab(),
        ],
        duration: Duration(milliseconds: 200),
        builder: (context, child, animation) {
          TabsRouter tabsRouter = context.tabsRouter;
          return Scaffold(
            body: child,
            bottomNavigationBar: _buildBottomNav(tabsRouter),
          );
        },
      );

  BottomNavigationBar _buildBottomNav(TabsRouter tabsRouter) {
    return BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      onTap: (index) {
        tabsRouter.setActiveIndex(index);
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.insert_drive_file),
          label: 'Documents',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
