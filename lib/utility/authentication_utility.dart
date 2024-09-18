import 'package:basic_utils/basic_utils.dart';

import '../dependencies.dart';
import '../preference/user_preference.dart';

class AuthenticationUtility {
  final UserPreference _preference =
      AppDependencies.injector.get<UserPreference>();

  Future<bool> get authenticated async => isAuthenticated();

  Future<bool> hasRole(String role) async {
    var userRoles = ''; //await _preference.roles;
    if (StringUtils.isNullOrEmpty(userRoles)) return false;
    return userRoles.contains(role);
  }

  Future<bool> isAuthenticated() async {
    return true;
    // We are not implementing this yet.
    // final token = await _preference.accessToken;
    // final refreshToken = await _preference.refreshToken;

    // if (StringUtils.isNullOrEmpty(token) ||
    //     StringUtils.isNullOrEmpty(refreshToken)) {
    //   return false;
    // }

    // return true;
  }

  Future<bool> hasPermission(String function, String action) async {
    return true;
  }

  Future<bool> hasRights({
    required String function,
    required List<String> roles,
    required List<String> permissions,
  }) async {
    for (var role in roles) {
      if (!await hasRole(role)) {
        return false;
      }
    }

    for (var permission in permissions) {
      if (!await hasPermission(function, permission)) {
        return false;
      }
    }

    return true;
  }
}
