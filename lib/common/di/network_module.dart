import 'package:abu_sahiy_pdi/common/constants/constants.dart';
import 'package:abu_sahiy_pdi/domain/model/auth_interceptor/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


@module
abstract class NetworkModule {
  Dio dio(AuthInterceptor authInterceptor) {
    final dio = Dio();

    dio.options.baseUrl = Constants.baseUrl;

    dio.interceptors.add(authInterceptor);

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: kDebugMode,
        requestBody: kDebugMode,
        responseBody: kDebugMode,
        responseHeader: kDebugMode,
        error: kDebugMode,
        compact: true,
        maxWidth: 90,
      ),
    );

    return dio;
  }
}
