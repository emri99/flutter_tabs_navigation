import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tab_nav/router/app_router.gr.dart';
import 'package:tab_nav/services/profile_service.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('Update phonenumber'),
              leading: Icon(Icons.phone_android),
              trailing: Icon(Icons.chevron_right),
              onTap: () => {AutoRouter.of(context).push(PhonenumberRoute())},
            ),
            ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  print('go to settings');
                  AutoRouter.of(context).push(ProfileSettingsRoute());
                  // Navigator.of(context, rootNavigator: true).pushNamed('/settings');
                  // context.router.root(SettingsRoute());
                }),
            Divider(height: 10),
            Divider(height: 10),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.redAccent[700]),
              ),
              leading: Icon(Icons.logout),
              onTap: () {
                ProfileService.logout();
                AutoRouter.of(context).root.replaceAll([BottomNavigationRoute()]);
              },
            ),
          ],
        ));
  }
}
