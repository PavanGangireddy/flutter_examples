import 'package:dio/dio.dart';
import 'package:flutter_app_pilot/core/local_storage.dart';

/*

- To regenerate access token if it has expired
- To navigate back to Login Page if refresh token has expired
- Ref: https://stackoverflow.com/a/69359058

*/

enum TokenErrorType {
  failedToRegenerateAccessToken,
}

// TODO: Change specific to app

const refreshTokenBaseUrl = "https://yourDomain.com/api/refresh";

class RefreshTokenInterceptor extends Interceptor {
  final Dio _dio;
  final _localStorage =
      LocalStorage(); // helper class to access your local storage

  RefreshTokenInterceptor(this._dio);

  /// return true if it is successfully regenerate the access token
  Future<bool> _regenerateAccessToken() async {
    try {
      var dio =
          Dio(); // should create new dio instance because the request interceptor is being locked

      // get refresh token from local storage
      final refreshToken = _localStorage.getRefreshToken();

      // make request to server to get the new access token from server using refresh token
      final response = await dio.post(
        refreshTokenBaseUrl,
        options: Options(headers: {"Authorization": "Bearer $refreshToken"}),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final newAccessToken = response
            .data["access_token"]; // parse data based on your JSON structure
        _localStorage.saveAccessToken(newAccessToken); // save to local storage
        return true;
      } else if (response.statusCode == 401 || response.statusCode == 403) {
        // it means your refresh token no longer valid now, it may be revoked by the backend
        _performLogout(_dio);
        return false;
      } else {
        return false;
      }
    } on DioError {
      return false;
    } catch (e) {
      return false;
    }
  }

  void _performLogout(Dio dio) {
    // TODO: Complete logout implementation
    // _dio.interceptors.requestLock.clear();
    // _dio.interceptors.requestLock.lock();

    _localStorage.removeTokens(); // remove token from local storage

    // back to login page without using context
    // check this https://stackoverflow.com/a/53397266/9101876
    // navigatorKey.currentState?.pushReplacementNamed(LoginPage.routeName);

    // _dio.interceptors.requestLock.unlock();
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    final statusCode = err.response?.statusCode;
    if (statusCode == 403 || statusCode == 401) {
      // NOTE: for some reasons the token can be invalidated before it is expired by the backend.

      var _refreshed = true;

      // TODO: Need to lock interceptors

      // regenerate access token
      // _dio.interceptors.requestLock.lock();
      _refreshed = await _regenerateAccessToken();
      // _dio.interceptors.requestLock.unlock();

      if (_refreshed) {
        // get tokens from local storage
        final accessToken = await _localStorage.getAccessToken();
        // add new access token to the request header
        err.requestOptions.headers["Authorization"] = "Bearer " + accessToken!;
        //create request with new access token
        final opts = Options(
            method: err.requestOptions.method,
            headers: err.requestOptions.headers);
        final cloneReq = await _dio.request(err.requestOptions.path,
            options: opts,
            data: err.requestOptions.data,
            queryParameters: err.requestOptions.queryParameters);

        return handler.resolve(cloneReq);
      } // create custom dio error

      err.type = DioErrorType.other;
      err.requestOptions.extra["tokenErrorType"] =
          TokenErrorType.failedToRegenerateAccessToken;
      return handler.reject(err);
    }
  }
}
