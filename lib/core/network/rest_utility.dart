import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:one_word/models/models.dart';
import '../core.dart';

int _connectTimeout = 15000;
int _receiveTimeout = 15000;
int _sendTimeout = 10000;

typedef NetSuccessCallback<T> = Function(T data);
typedef NetSuccessListCallback<T> = Function(List<T> data);
typedef NetErrorCallback = Function(int code, String msg);

class RestUtils {
  late Dio dio;

  RestUtils(
    String baseUrl, {
    int? connectTimeout,
    int? receiveTimeout,
    int? sendTimeout,
    List<Interceptor>? interceptors,
  }) {
    final BaseOptions options = BaseOptions(
      connectTimeout: Duration(
        milliseconds: connectTimeout ?? _connectTimeout,
      ),
      receiveTimeout: Duration(
        milliseconds: receiveTimeout ?? _receiveTimeout,
      ),
      sendTimeout: Duration(
        milliseconds: sendTimeout ?? _sendTimeout,
      ),
      responseType: ResponseType.plain,
      validateStatus: (_) {
        return true;
      },
      baseUrl: baseUrl,
    );
    dio = Dio(options);

    void addInterceptor(Interceptor interceptor) {
      dio.interceptors.add(interceptor);
    }

    if (interceptors != null && interceptors.isNotEmpty) {
      interceptors.forEach(addInterceptor);
    }
  }

  Future<DataResult<DataResponse<T>>> request<T extends BaseResponseModel>(
    Method method,
    String url, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    RequestApiType requestApiType = RequestApiType.oneWordAPI,
  }) async {
    LoggerUtils.d('request: $data');

    try {
      final Response<String> response = await dio.request<String>(
        url,
        data: data,
        queryParameters: queryParameters,
        options: _checkOptions(method.value, options),
        cancelToken: cancelToken,
      );
      final statusCode = response.statusCode;
      if (statusCode != null) {
        if (statusCode >= ExceptionHandle.success &&
            statusCode < ExceptionHandle.multipleChoice) {
          final String data = response.data.toString();
          LoggerUtils.d('response: $data');

          /// Integration test cannot be used isolate https://github.com/flutter/flutter/issues/24703
          /// Use compute conditions: the data is greater than 10KB (roughly use 10 * 1024) and it is not currently an integration test (it may be adjusted according to the Web environment later)
          /// The main purpose is to reduce unnecessary performance overhead
          final model = GetIt.I.get<T>();

          if (model is StringResponseModel) {
            var res = DataResponse<T>(statusCode, '', model..data = data);
            return DataResult.success(res);
          } else if (model is CommandResponseModel) {
            var res = DataResponse<T>(statusCode, '', model);
            return DataResult.success(res);
          }

          final bool isCompute = data.length > 10 * 1024;
          LoggerUtils.d('isCompute:$isCompute');
          final Map<String, dynamic> map = isCompute
              ? await compute(parseData, data)
              : parseData(data, requestApiType: requestApiType);
          var res = DataResponse<T>.fromJson(map);
          res.statusCode = response.statusCode;
          return DataResult.success(res);
        }
      }
      final error = processResponse(statusCode ?? 500, response.data ?? '');
      LoggerUtils.e(
          'ErrorCode: $statusCode  + ErrorMessage: ${error.first.errorMessage}');
      return DataResult.failure(
          ExceptionHandle.handleError(statusCode, error.first.errorMessage));
    } catch (e) {
      LoggerUtils.d(e.toString());
      return DataResult.failure(ExceptionHandle.handleException(e));
    }
  }

  Options _checkOptions(String method, Options? options) {
    options ??= Options();
    options.method = method;
    return options;
  }

  List<ErrorItem> processResponse(int statusCode, String body) {
    var listError = <ErrorItem>[];
    if (statusCode < 200 || statusCode >= 400) {
      try {
        if (statusCode >= 500) {
          listError.add(ErrorItem(
              propertyName: statusCode.toString(),
              errorCode: statusCode.toString(),
              errorMessage: tr('server_error')));
          return listError;
        }
        List<dynamic> listJsonError = jsonDecode(body);
        for (var json in listJsonError) {
          listError.add(ErrorItem.fromJson(json));
        }
        if (listJsonError.isEmpty) {
          listError
              .add(ErrorItem(errorCode: 'Unknown', errorMessage: 'Unknown'));
        }
        // ignore: empty_catches
      } catch (ex) {
        listError
            .add(ErrorItem(errorCode: 'Unknown', errorMessage: ex.toString()));
      }
    }
    return listError;
  }
}

Map<String, dynamic> parseData(
  String data, {
  RequestApiType requestApiType = RequestApiType.oneWordAPI,
}) {
  String handleDictionaryData = '{"items": $data}';
  return json.decode(requestApiType == RequestApiType.oneWordAPI
      ? data
      : handleDictionaryData) as Map<String, dynamic>;
}

enum Method { get, post, put, patch, delete, head }

extension MethodExtension on Method {
  String get value => ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'HEAD'][index];
}
