import 'package:dio/dio.dart';
import 'package:flutter_app_pilot/core/exceptions/exceptions.dart';

abstract class Failure {
  Failure([List properties = const <dynamic>[]]);
}

// General failures
class ServerFailure extends Failure {
  ServerFailure(ServerException error);
}

class UnexpectedFailure extends Failure {
  UnexpectedFailure(DioError error);
}
