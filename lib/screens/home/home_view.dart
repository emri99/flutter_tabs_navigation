import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tab_nav/core/extensions/index.dart';
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
      body: ListView(
        children: [
          ListTile(
            title: Text('Native AutoRouter methods'),
            tileColor: Colors.blueGrey[300],
          ),
          ListTile(
            title: Text('Open inner route page'),
            subtitle: Text(
              """AutoTabsRouter.of(context)
  ..innerRouterOf<StackRouter>(ProfileTab.name).push(ProfileSettingsRoute())
  ..setActiveId(3);
                """,
              style: Theme.of(context).textTheme.overline,
            ),
            isThreeLine: true,
            onTap: () {
              AutoTabsRouter.of(context)
                ..innerRouterOf<StackRouter>(ProfileTab.name).push(ProfileSettingsRoute())
                ..setActiveIndex(3);
            },
          ),
          ListTile(
            title: Text('Open full named route from root router'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "AutoRouter.of(context).root.pushPath('/profile/settings')",
                  style: Theme.of(context).textTheme.overline,
                ),
                Text('Notice that the full screen animation transition include the bottom bar',
                    style: TextStyle(color: Colors.red[300]))
              ],
            ),
            onTap: () => AutoRouter.of(context).root.pushPath('/profile/settings', includePrefixMatches: true),
          ),
          ListTile(
            title: Text('Custom extension methods'),
            subtitle: Text('@see autoroute_custom_x.dart',
                style: Theme.of(context).textTheme.overline?.copyWith(fontSize: 12)),
            tileColor: Colors.blueGrey[300],
          ),
          ListTile(
            title: Text('Open inner route'),
            subtitle: Text(
              'context.pushTabRoute(ProfileTab.name, ProfileSettingsRoute())',
              style: Theme.of(context).textTheme.overline,
            ),
            isThreeLine: true,
            onTap: () => context.pushTabRoute(ProfileTab.name, ProfileSettingsRoute()),
          ),
          ListTile(
            title: Text('Open inner named route'),
            subtitle: Text(
              'context.pushTabNamedRoute(ProfileTab.name, ProfileSettingsRoute().path = "settings");',
              style: Theme.of(context).textTheme.overline,
            ),
            isThreeLine: true,
            onTap: () => context.pushTabNamedRoute(ProfileTab.name, ProfileSettingsRoute().path),
          ),
        ],
      ),
      /*body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).root.pushPath('/profile/settings');
              },
              child: Text(
                'Open fullPath named route',
                maxLines: 2,
              ),
            ),
            Text(
              "AutoRouter.of(context).root.pushPath('/profile/settings')",
              style: Theme.of(context).textTheme.overline,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),*/
    );
  }
}
