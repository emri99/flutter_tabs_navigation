import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tab_nav/router/guards/auth_guard.dart';
import 'package:tab_nav/screens/bottom_navigation_view.dart';
import 'package:tab_nav/screens/documents/document_list_view.dart';
import 'package:tab_nav/screens/home/home_view.dart';
import 'package:tab_nav/screens/login/login_view.dart';
import 'package:tab_nav/screens/profile/phonenumber_view.dart';
import 'package:tab_nav/screens/profile/profile_view.dart';
import 'package:tab_nav/screens/settings/settings_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      guards: [AuthGuard],
      page: BottomNavigationView,
      initial: true,
      usesTabsRouter: true,
      children: [
        AutoRoute(
          path: 'home',
          page: EmptyRouterPage,
          name: 'HomeTab',
          children: [
            AutoRoute(
              page: HomeView,
              path: '',
            )
          ],
        ),
        AutoRoute(
          path: 'documents',
          page: EmptyRouterPage,
          name: 'DocumentsTab',
          children: [
            AutoRoute(
              page: DocumentListView,
              path: '',
            )
          ],
        ),
        AutoRoute(
          path: 'profile',
          page: EmptyRouterPage,
          name: 'ProfileTab',
          children: [
            AutoRoute(
              path: '',
              page: ProfileView,
            ),
            AutoRoute(
              path: 'phone',
              page: PhonenumberView,
            ),
            CustomRoute(
              path: 'settings',
              page: SettingsView,
              name: 'ProfileSettingsRoute',
            ),
          ],
        ),
      ],
    ),
    AutoRoute(
      path: '/login',
      page: LoginView,
      fullscreenDialog: true,
    ),
    CustomRoute(
      path: '/settings',
      page: SettingsView,
      guards: [AuthGuard],
      fullscreenDialog: false,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      barrierDismissible: true,
      durationInMilliseconds: 100,
      reverseDurationInMilliseconds: 100,
    ),
  ],
)
class $AppRouter {}
