// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:flutter/widgets.dart' as _i13;

import '../screens/bottom_navigation_view.dart' as _i4;
import '../screens/favorites/favorites_view.dart' as _i8;
import '../screens/home/home_view.dart' as _i7;
import '../screens/login/login_view.dart' as _i5;
import '../screens/products/product_list_view.dart' as _i9;
import '../screens/products/product_view.dart' as _i10;
import '../screens/profile/phonenumber_view.dart' as _i12;
import '../screens/profile/profile_view.dart' as _i11;
import '../screens/settings/settings_view.dart' as _i6;
import 'guards/auth_guard.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter({@_i2.required this.authGuard}) : assert(authGuard != null);

  final _i3.AuthGuard authGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    BottomNavigationRoute.name: (entry) {
      var route = entry.routeData.as<BottomNavigationRoute>();
      return _i1.CupertinoPageX(
          entry: entry, child: _i4.BottomNavigationView(key: route.key));
    },
    LoginRoute.name: (entry) {
      var route = entry.routeData.as<LoginRoute>();
      return _i1.CupertinoPageX(
          entry: entry,
          child: _i5.LoginView(onLogin: route.onLogin, key: route.key),
          fullscreenDialog: true);
    },
    SettingsRoute.name: (entry) {
      return _i1.CupertinoPageX(
          entry: entry, child: _i6.SettingsView(), fullscreenDialog: true);
    },
    HomeTab.name: (entry) {
      return _i1.CupertinoPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    FavoritesTab.name: (entry) {
      return _i1.CupertinoPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    DocumentsTab.name: (entry) {
      return _i1.CupertinoPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    ProfileTab.name: (entry) {
      return _i1.CupertinoPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    HomeRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i7.HomeView());
    },
    FavoritesRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i8.FavoritesView());
    },
    ProductListRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i9.ProductListView());
    },
    ProductRoute.name: (entry) {
      var route = entry.routeData.as<ProductRoute>();
      return _i1.CupertinoPageX(
          entry: entry, child: _i10.ProductView(route.id, route.section));
    },
    ProfileRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i11.ProfileView());
    },
    ProfileSettingsRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i6.SettingsView());
    },
    PhonenumberRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i12.PhonenumberView());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<BottomNavigationRoute>(BottomNavigationRoute.name,
            path: '/',
            usesTabsRouter: true,
            routeBuilder: (match) => BottomNavigationRoute.fromMatch(match),
            guards: [
              authGuard
            ],
            children: [
              _i1.RouteConfig<HomeTab>(HomeTab.name,
                  path: 'home',
                  routeBuilder: (match) => HomeTab.fromMatch(match),
                  children: [
                    _i1.RouteConfig<HomeRoute>(HomeRoute.name,
                        path: '',
                        routeBuilder: (match) => HomeRoute.fromMatch(match))
                  ]),
              _i1.RouteConfig<FavoritesTab>(FavoritesTab.name,
                  path: 'favorites',
                  routeBuilder: (match) => FavoritesTab.fromMatch(match),
                  children: [
                    _i1.RouteConfig<FavoritesRoute>(FavoritesRoute.name,
                        path: '',
                        routeBuilder: (match) =>
                            FavoritesRoute.fromMatch(match))
                  ]),
              _i1.RouteConfig<DocumentsTab>(DocumentsTab.name,
                  path: 'documents',
                  routeBuilder: (match) => DocumentsTab.fromMatch(match),
                  children: [
                    _i1.RouteConfig<ProductListRoute>(ProductListRoute.name,
                        path: '',
                        routeBuilder: (match) =>
                            ProductListRoute.fromMatch(match)),
                    _i1.RouteConfig<ProductRoute>(ProductRoute.name,
                        path: ':id',
                        routeBuilder: (match) => ProductRoute.fromMatch(match))
                  ]),
              _i1.RouteConfig<ProfileTab>(ProfileTab.name,
                  path: 'profile',
                  routeBuilder: (match) => ProfileTab.fromMatch(match),
                  children: [
                    _i1.RouteConfig<ProfileRoute>(ProfileRoute.name,
                        path: '',
                        routeBuilder: (match) => ProfileRoute.fromMatch(match)),
                    _i1.RouteConfig<ProfileSettingsRoute>(
                        ProfileSettingsRoute.name,
                        path: 'settings',
                        routeBuilder: (match) =>
                            ProfileSettingsRoute.fromMatch(match)),
                    _i1.RouteConfig<PhonenumberRoute>(PhonenumberRoute.name,
                        path: 'phone',
                        routeBuilder: (match) =>
                            PhonenumberRoute.fromMatch(match))
                  ])
            ]),
        _i1.RouteConfig<LoginRoute>(LoginRoute.name,
            path: '/login',
            routeBuilder: (match) => LoginRoute.fromMatch(match)),
        _i1.RouteConfig<SettingsRoute>(SettingsRoute.name,
            path: '/settings',
            routeBuilder: (match) => SettingsRoute.fromMatch(match),
            guards: [authGuard])
      ];
}

class BottomNavigationRoute extends _i1.PageRouteInfo {
  BottomNavigationRoute({this.key, List<_i1.PageRouteInfo> children})
      : super(name, path: '/', initialChildren: children);

  BottomNavigationRoute.fromMatch(_i1.RouteMatch match)
      : key = null,
        super.fromMatch(match);

  final _i13.Key key;

  static const String name = 'BottomNavigationRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  LoginRoute({@_i2.required this.onLogin, this.key})
      : super(name, path: '/login');

  LoginRoute.fromMatch(_i1.RouteMatch match)
      : onLogin = null,
        key = null,
        super.fromMatch(match);

  final void Function(bool) onLogin;

  final _i13.Key key;

  static const String name = 'LoginRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: '/settings');

  SettingsRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SettingsRoute';
}

class HomeTab extends _i1.PageRouteInfo {
  const HomeTab({List<_i1.PageRouteInfo> children})
      : super(name, path: 'home', initialChildren: children);

  HomeTab.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HomeTab';
}

class FavoritesTab extends _i1.PageRouteInfo {
  const FavoritesTab({List<_i1.PageRouteInfo> children})
      : super(name, path: 'favorites', initialChildren: children);

  FavoritesTab.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'FavoritesTab';
}

class DocumentsTab extends _i1.PageRouteInfo {
  const DocumentsTab({List<_i1.PageRouteInfo> children})
      : super(name, path: 'documents', initialChildren: children);

  DocumentsTab.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'DocumentsTab';
}

class ProfileTab extends _i1.PageRouteInfo {
  const ProfileTab({List<_i1.PageRouteInfo> children})
      : super(name, path: 'profile', initialChildren: children);

  ProfileTab.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ProfileTab';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '');

  HomeRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HomeRoute';
}

class FavoritesRoute extends _i1.PageRouteInfo {
  const FavoritesRoute() : super(name, path: '');

  FavoritesRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'FavoritesRoute';
}

class ProductListRoute extends _i1.PageRouteInfo {
  const ProductListRoute() : super(name, path: '');

  ProductListRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ProductListRoute';
}

class ProductRoute extends _i1.PageRouteInfo {
  ProductRoute({this.id, this.section})
      : super(name, path: ':id', params: {'id': id});

  ProductRoute.fromMatch(_i1.RouteMatch match)
      : id = match.pathParams.getString('id'),
        section = match.pathParams.getString('section'),
        super.fromMatch(match);

  final String id;

  final String section;

  static const String name = 'ProductRoute';
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: '');

  ProfileRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ProfileRoute';
}

class ProfileSettingsRoute extends _i1.PageRouteInfo {
  const ProfileSettingsRoute() : super(name, path: 'settings');

  ProfileSettingsRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ProfileSettingsRoute';
}

class PhonenumberRoute extends _i1.PageRouteInfo {
  const PhonenumberRoute() : super(name, path: 'phone');

  PhonenumberRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'PhonenumberRoute';
}
