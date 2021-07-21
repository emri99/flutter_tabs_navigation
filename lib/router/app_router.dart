import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tab_nav/router/guards/auth_guard.dart';
import 'package:tab_nav/screens/bottom_navigation_view.dart';
import 'package:tab_nav/screens/favorites/favorites_view.dart';
import 'package:tab_nav/screens/home/home_view.dart';
import 'package:tab_nav/screens/login/login_view.dart';
import 'package:tab_nav/screens/products/product_list_view.dart';
import 'package:tab_nav/screens/products/product_view.dart';
import 'package:tab_nav/screens/profile/phonenumber_view.dart';
import 'package:tab_nav/screens/profile/profile_view.dart';
import 'package:tab_nav/screens/settings/settings_view.dart';

@CupertinoAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      guards: [AuthGuard],
      page: BottomNavigationView,
      initial: true,
      usesTabsRouter: true,
      children: [
        CustomRoute(
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
        CustomRoute(
          path: 'favorites',
          page: EmptyRouterPage,
          name: 'FavoritesTab',
          children: [
            AutoRoute(
              page: FavoritesView,
              path: '',
            )
          ],
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          path: 'documents',
          page: EmptyRouterPage,
          name: 'DocumentsTab',
          children: [
            AutoRoute(
              page: ProductListView,
              path: '',
            ),
            AutoRoute(
              page: ProductView,
              path: ':id',
            )
          ],
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          path: 'profile',
          page: EmptyRouterPage,
          name: 'ProfileTab',
          children: [
            AutoRoute(
              path: '',
              page: ProfileView,
            ),
            AutoRoute(
              path: 'settings',
              page: SettingsView,
              name: 'ProfileSettingsRoute',
            ),
            AutoRoute(
              path: 'phone',
              page: PhonenumberView,
            ),
          ],
          transitionsBuilder: TransitionsBuilders.fadeIn,
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
      fullscreenDialog: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
)
class $AppRouter {}
