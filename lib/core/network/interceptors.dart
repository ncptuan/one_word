import 'package:dio/dio.dart';
import '../../preference/user_preference.dart';
import 'package:flutter/foundation.dart';
import '../../dependencies.dart';

// Will use this in the furture

class AuthInterceptor extends Interceptor {
  final _preference = AppDependencies.injector.get<UserPreference>();
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final String accessToken = await _preference.accessToken ?? '';
    if (accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    if (!kIsWeb) {
      // https://developer.github.com/v3/#user-agent-required
      options.headers['User-Agent'] = 'Mozilla/5.0';
    }
    super.onRequest(options, handler);
  }
}

class TokenInterceptor extends Interceptor {
  // final _preference = AppDependencies.injector.get<UserPreference>();
  // final _restUtils =
  //     AppDependencies.injector.get<RestUtils>(instanceName: 'MAIN');
  // final _appRouter = AppDependencies.injector.get<AppRouter>();
  // Dio? _tokenDio;

  Future<Map<String, dynamic>?> _getToken() async {
    return null;

    // final Map<String, String> params = <String, String>{};
    // params['refreshToken'] = await _preference.refreshToken ?? '';
    // try {
    //   _tokenDio ??= Dio();
    //   _tokenDio!.options = _restUtils.dio.options;
    //   final Response response = await _tokenDio!
    //       .post<dynamic>('/api/v1/auth/refresh-token', data: params);
    //   if (response.statusCode == ExceptionHandle.success) {
    //     return (json.decode(response.data.toString()) as Map<String, dynamic>);
    //   } else if (response.statusCode == ExceptionHandle.unauthorized) {
    //     _appRouter.popForced();
    //     await _appRouter.push(const LoginRoute());
    //   }
    // } catch (e) {
    //   LoggerUtils.e('Error: ${e.toString()}');
    // }
    // return null;
  }

  @override
  Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    //401
    // if (response.statusCode == ExceptionHandle.unauthorized) {
    //   LoggerUtils.d('-----------Request Token------------');
    //   final Dio dio = _restUtils.dio;
    //   dio.lock();
    //   final Map<String, dynamic>? token = await _getToken();
    //   final String? accessToken = token?['accessToken'];
    //   final String? refreshToken = token?['refreshToken'];
    //   final int? expiry = token?['expiry'];
    //   LoggerUtils.e(
    //       '-----------New AccessToken: $accessToken ------------New RefreshToken: $refreshToken');
    //   await _preference.setAccessToken(accessToken ?? '');
    //   await _preference.setRefreshToken(refreshToken ?? '');
    //   await _preference
    //       .setExpiredDate(DateTime.now().add(Duration(seconds: expiry! - 30)));
    //   dio.unlock();

    //   if (accessToken != null) {
    //     final RequestOptions request = response.requestOptions;
    //     request.headers['Authorization'] = 'Bearer $accessToken';

    //     final Options options = Options(
    //       headers: request.headers,
    //       method: request.method,
    //     );

    //     try {
    //       LoggerUtils.e('----------- Re-Request API ------------');
    //       final Response response = await _tokenDio!.request<dynamic>(
    //         request.path,
    //         data: request.data,
    //         queryParameters: request.queryParameters,
    //         cancelToken: request.cancelToken,
    //         options: options,
    //         onReceiveProgress: request.onReceiveProgress,
    //       );
    //       return handler.next(response);
    //     } on DioException catch (e) {
    //       return handler.reject(e);
    //     }
    //   }
    // }
    // super.onResponse(response, handler);
  }
}
