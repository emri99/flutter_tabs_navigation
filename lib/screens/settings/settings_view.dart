import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatefulWidget {
  @override
  _SettingsViewState createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool _biometricsAllowed = true;
  bool _lightTheme = true;

  @override
  Widget build(BuildContext context) {
    String currentTab = 'none';
    try {
      currentTab = AutoTabsRouter.of(context)?.current?.name;
    } catch (e) {}
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('Biometrics allowed'),
              leading: Icon(Icons.fingerprint),
              trailing: Switch.adaptive(
                value: _biometricsAllowed,
                onChanged: (bool v) => setState(() => _biometricsAllowed = v),
              ),
            ),
            ListTile(
              title: Text('Light Theme'),
              leading: Icon(_lightTheme ? Icons.wb_sunny : Icons.wb_sunny_outlined),
              trailing: Switch.adaptive(
                value: _lightTheme,
                onChanged: (bool v) => setState(() => _lightTheme = v),
              ),
            ),
            ListTile(
              title: Text('current tabs: $currentTab'),
            )
          ],
        ));
  }
}
