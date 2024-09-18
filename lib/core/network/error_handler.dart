import 'dart:io';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

// General failures
class GenericFailure extends Failure {
  const GenericFailure(super.message);
}

class ApiFailure extends Failure {
  final int statusCode;
  const ApiFailure(this.statusCode, String message) : super(message);
}

class ExceptionHandle {
  static const int success = 200;
  static const int successNotContent = 204;
  static const int multipleChoice = 300;
  static const int notModified = 304;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;

  static const int netError = 1000;
  static const int parseError = 1001;
  static const int socketError = 1002;
  static const int httpError = 1003;
  static const int connectTimeoutError = 1004;
  static const int sendTimeoutError = 1005;
  static const int receiveTimeoutError = 1006;
  static const int cancelError = 1007;
  static const int unknownError = 9999;

  static final Map<int, ApiFailure> _errorMap = <int, ApiFailure>{
    netError: ApiFailure(netError, tr('network_error')),
    parseError: ApiFailure(parseError, tr('parse_error')),
    socketError: ApiFailure(socketError, tr('socket_error')),
    httpError: ApiFailure(httpError, tr('http_error')),
    connectTimeoutError:
        ApiFailure(connectTimeoutError, tr('connect_timeout_error')),
    sendTimeoutError: ApiFailure(sendTimeoutError, tr('send_timeout_error')),
    receiveTimeoutError:
        ApiFailure(receiveTimeoutError, tr('receive_timeout_error')),
    cancelError: ApiFailure(cancelError, tr('cancel_error')),
    unknownError: ApiFailure(unknownError, tr('unknown_error')),
  };

  static ApiFailure handleError(int? statusCode, String? message) {
    return _errorMap[statusCode] ??
        ApiFailure(statusCode ?? unknownError, message ?? tr('unknown_error'));
  }

  static ApiFailure handleException(dynamic error) {
    if (error is DioException) {
      if (error.type.errorCode == 0) {
        return _handleException(error.error);
      } else {
        return _errorMap[error.type.errorCode]!;
      }
    } else {
      return _handleException(error);
    }
  }

  static ApiFailure _handleException(dynamic error) {
    int errorCode = unknownError;
    if (error is SocketException) {
      errorCode = socketError;
    }
    if (error is HttpException) {
      errorCode = httpError;
    }
    if (error is FormatException) {
      errorCode = parseError;
    }
    return _errorMap[errorCode]!;
  }
}

extension DioErrorTypeExtension on DioExceptionType {
  int get errorCode => [
        ExceptionHandle.connectTimeoutError,
        ExceptionHandle.sendTimeoutError,
        ExceptionHandle.receiveTimeoutError,
        0,
        ExceptionHandle.cancelError,
        0,
      ][index];
}
