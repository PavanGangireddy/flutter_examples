// import 'package:dio/dio.dart';
// import 'package:flutter_app_pilot/core/local_storage.dart';

// /*

// - To regenerate access token if it has expired
// - To navigate back to Login Page if refresh token has expired
// - Ref: https://stackoverflow.com/a/69359058

// */

// enum TokenErrorType {
//   tokenNotFound,
//   refreshTokenHasExpired,
//   failedToRegenerateAccessToken,
//   invalidAccessToken
// }

// class RefreshTokenInterceptor extends Interceptor {
//   final Dio _dio;
//   final _localStorage =
//       LocalStorage(); // helper class to access your local storage

//   RefreshTokenInterceptor(this._dio);

//   @override
//   void onRequest(
//       RequestOptions options, RequestInterceptorHandler handler) async {
//     // get tokens from local storage
//     final accessToken = _localStorage.getAccessToken();
//     final refreshToken = _localStorage.getRefreshToken();

//     if (accessToken == null || refreshToken == null) {
//       _performLogout(_dio);

//       // create custom dio error
//       options.extra["tokenErrorType"] = TokenErrorType
//           .tokenNotFound; // I use enum type, you can chage it to string
//       final error = DioError(requestOptions: options, type: DioErrorType.other);
//       return handler.reject(error);
//     }

//     // check if tokens have already expired or not
//     // I use jwt_decoder package
//     // Note: ensure your tokens has "exp" claim
//     final accessTokenHasExpired = JwtDecoder.isExpired(accessToken);
//     final refreshTokenHasExpired = JwtDecoder.isExpired(refreshToken);

//     var _refreshed = true;

//     if (refreshTokenHasExpired) {
//       _performLogout(_dio);

//       // create custom dio error
//       options.extra["tokenErrorType"] = TokenErrorType.refreshTokenHasExpired;
//       final error = DioError(requestOptions: options, type: DioErrorType.other);

//       return handler.reject(error);
//     } else if (accessTokenHasExpired) {
//       // regenerate access token
//       _dio.interceptors.requestLock.lock();
//       _refreshed = await _regenerateAccessToken();
//       _dio.interceptors.requestLock.unlock();
//     }

//     if (_refreshed) {
//       // add access token to the request header
//       options.headers["Authorization"] = "Bearer $accessToken";
//       return handler.next(options);
//     } else {
//       // create custom dio error
//       options.extra["tokenErrorType"] =
//           TokenErrorType.failedToRegenerateAccessToken;
//       final error = DioError(requestOptions: options, type: DioErrorType.other);
//       return handler.reject(error);
//     }
//   }

//   @override
//   void onError(DioError err, ErrorInterceptorHandler handler) {
//     if (err.response?.statusCode == 403 || err.response?.statusCode == 401) {
//       // for some reasons the token can be invalidated before it is expired by the backend.
//       // then we should navigate the user back to login page

//       _performLogout(_dio);

//       // create custom dio error
//       err.type = DioErrorType.other;
//       err.requestOptions.extra["tokenErrorType"] =
//           TokenErrorType.invalidAccessToken;
//     }

//     return handler.next(err);
//   }

//   void _performLogout(Dio dio) {
//     _dio.interceptors.requestLock.clear();
//     _dio.interceptors.requestLock.lock();

//     _localStorage.removeTokens(); // remove token from local storage

//     // back to login page without using context
//     // check this https://stackoverflow.com/a/53397266/9101876
//     navigatorKey.currentState?.pushReplacementNamed(LoginPage.routeName);

//     _dio.interceptors.requestLock.unlock();
//   }

//   /// return true if it is successfully regenerate the access token
//   Future<bool> _regenerateAccessToken() async {
//     try {
//       var dio =
//           Dio(); // should create new dio instance because the request interceptor is being locked

//       // get refresh token from local storage
//       final refreshToken = _localStorage.getRefreshToken();

//       // make request to server to get the new access token from server using refresh token
//       final response = await dio.post(
//         "https://yourDomain.com/api/refresh",
//         options: Options(headers: {"Authorization": "Bearer $refreshToken"}),
//       );

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final newAccessToken = response
//             .data["accessToken"]; // parse data based on your JSON structure
//         _localStorage.saveAccessToken(newAccessToken); // save to local storage
//         return true;
//       } else if (response.statusCode == 401 || response.statusCode == 403) {
//         // it means your refresh token no longer valid now, it may be revoked by the backend
//         _performLogout(_dio);
//         return false;
//       } else {
//         print(response.statusCode);
//         return false;
//       }
//     } on DioError {
//       return false;
//     } catch (e) {
//       return false;
//     }
//   }
// }
