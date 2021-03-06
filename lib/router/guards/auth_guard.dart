import 'package:auto_route/auto_route.dart';
import 'package:tab_nav/router/app_router.gr.dart';
import 'package:tab_nav/services/profile_service.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  Future<bool> canNavigate(List<PageRouteInfo> pendingRoutes, StackRouter router) async {
    print(router.navigatorKey.currentContext);
    if (!ProfileService.isLoggedIn) {
      // ignore: unawaited_futures
      router.root.push(LoginRoute(onLogin: (success) {
        if (success) {
          ProfileService.login('john.doe@example.com');
          router.replaceAll(pendingRoutes);
        }
      }));
      return false;
    }
    return true;
  }
}
