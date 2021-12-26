// import 'package:dio/dio.dart';

// /*

// - Verifying the errors sent from the server and directly map them to Error classes that our app can handle;
//- To navigate back to Login Page if there is an error because of invalidated token (for example, revoked by the backend)


// */

// class AppExceptionInterceptor extends Interceptor {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     print('REQUEST[${options.method}] => PATH: ${options.path}');
//     return super.onRequest(options, handler);
//   }

//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) {
//     print(
//       'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
//     );
//     return super.onResponse(response, handler);
//   }

//   @override
//   void onError(DioError err, ErrorInterceptorHandler handler) {
//     print(
//       'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
//     );

//     return errorInterceptor(err);
//   }


//   ErrorInterceptorHandler errorInterceptor(DioError err) {
//     final statusCode = err.response?.statusCode;
//     switch (statusCode) {
//       case 200:
//       case 201:
//       case 404:
//         return err.response?.data;
//       case 400:
//         throw InvalidRequestException(err.response?.data.toString());
//       case 401:
//       case 403:
//         throw UnauthorisedException(response.data.toString());
//       case 500:
//       default:
//         throw FetchDataException(
//           'Error occurred while Communication with Server with StatusCode : ${response.statusCode}',
//         );
//     }
//   }
// }
