import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_nav/router/app_router.gr.dart';
import 'package:tab_nav/services/profile_service.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () async {
                ProfileService.logout();
                AutoRouter.of(context).root.replace(BottomNavigationRoute());
              }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home'),
            const SizedBox(height: 30),
            RaisedButton(
              onPressed: () {
                context.tabsRouter
                  ..setActiveIndex(2)
                  ..innerRouterOf<StackRouter>(ProfileTab.name).push(ProfileSettingsRoute());
              },
              child: Text('Open inner settings'),
            )
          ],
        ),
      ),
    );
  }
}
