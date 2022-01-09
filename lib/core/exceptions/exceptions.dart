import 'app_exception.dart';

class UnauthorisedException extends AppException {
  UnauthorisedException([message]) : super(message, 'Unauthorised: ');
}

class InvalidRequestException extends AppException {
  InvalidRequestException([message]) : super(message, 'Invalid Request: ');
}

class ServerException extends AppException {
  ServerException([message]) : super(message, 'Server exception: ');
}
