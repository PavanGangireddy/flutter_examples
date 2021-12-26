import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_app_pilot/core/storage_constants.dart';

class LocalStorage {
  Future<String?> getAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(StorageConstants.accessToken);
    return token;
  }

  Future<String?> getRefreshToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(StorageConstants.refreshToken);
    return token;
  }

  // TODO: Complete this implementation
  removeTokens() {}
  saveAccessToken(String token) {}
}
