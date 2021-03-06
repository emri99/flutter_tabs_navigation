import 'dart:developer';

class ProfileService {
  static bool _isLoggedIn = false;
  static String _username;

  static bool get isLoggedIn => _isLoggedIn;
  static String get username => _username;

  static login(String username) {
    log('login $username', name: 'ProfileService');
    _username = username;
    _isLoggedIn = true;
  }

  static logout() {
    log('logout', name: 'ProfileService');
    _isLoggedIn = false;
    _username = null;
  }
}
