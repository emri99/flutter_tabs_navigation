import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:tab_nav/screens/settings/phonenumber_view.dart';

class LoginView extends StatelessWidget {
  LoginView({@required this.onLogin, Key key}) : super(key: key);

  final ValueChanged<bool> onLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Username'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                  child: Text('Login'), // onPressed: () => Navigator.of(context).push(AppRouter.PhonenumberViewRoute),
                  onPressed: () async {
                    onLogin(true);
                  })
            ],
          ),
        ));
  }
}
