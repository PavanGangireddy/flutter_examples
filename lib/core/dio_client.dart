import 'package:dio/dio.dart';
import 'package:flutter_app_pilot/core/interceptors/auth_interceptor.dart';
import 'package:flutter_app_pilot/core/interceptors/refresh_token_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// TODO: Add cancel request support
/*

    Cancel the page request if the UI no-longer needs it before the request
    is finished.
    This typically happen if the user scrolls very fast
*/

class CustomDioClient {
  Dio _dio = Dio();

  bool requiresAccessTokenForService = true;

  Dio create({required String baseUrl, bool requiresAccessToken = true}) {
    requiresAccessTokenForService = requiresAccessToken;

    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      contentType: Headers.jsonContentType,
      connectTimeout: 5000,
      receiveTimeout: 5000,
    ));

    return addInterceptors(_dio);
  }

  Dio addInterceptors(Dio dio) {
    // Add Log interceptor

    // ignore: avoid_single_cascade_in_expression_statements
    dio
      ..interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: false,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ));

    if (requiresAccessTokenForService == true) {
      return dio..interceptors.add(AuthInterceptor());
    }

    if (requiresAccessTokenForService == true) {
      return dio..interceptors.add(RefreshTokenInterceptor(dio));
    }

    return dio;
  }
}
