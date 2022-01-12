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

  Future<void> saveAccessToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(StorageConstants.accessToken, token);
  }

  Future<bool?> isOnboardingAcknowledged() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final result = prefs.getBool(StorageConstants.onboardingAcknowledged);
    return result;
  }

  Future<void> saveOnboardingAcknowledged() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(StorageConstants.onboardingAcknowledged, true);
  }

  // TODO: Complete this implementation
  removeTokens() {}
}
