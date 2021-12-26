import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_app_pilot/core/storage_constants.dart';

/*

- Adds Authentication headers to the server if requiresAccessToken is true 
  - Using a stored key from shared preferences;
- If requiresToken is false for any endpoint then Authentication headers wont be added
- Ref: https://medium.com/flutter-community/dio-interceptors-in-flutter-17be4214f363

*/

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers["requiresToken"] == false) {
      //remove the requiresToken header
      removeRequiresToken(options);
      return handler.next(options);
    }
    await addAuthorisationHeader(options);
    return handler.next(options);
  }

  addAuthorisationHeader(RequestOptions options) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.get(StorageConstants.accessToken);
    options.headers.addAll({"Authorization": "Bearer sdds"});
  }

  void removeRequiresToken(RequestOptions options) {
    options.headers.remove("requiresToken");
  }
}
