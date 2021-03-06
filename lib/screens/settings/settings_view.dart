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
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
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
          ],
        ));
  }
}
