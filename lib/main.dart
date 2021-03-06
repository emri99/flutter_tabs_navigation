import 'package:flutter/material.dart';
import 'package:tab_nav/router/app_router.gr.dart';
import 'package:tab_nav/router/guards/auth_guard.dart';

void main() {
  runApp(MyApp());
}

final _appRouter = AppRouter(authGuard: AuthGuard());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
