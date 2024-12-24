import 'package:abu_sahiy_pdi/domain/model/storage/storage.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class AuthInterceptor extends QueuedInterceptor {
  final Storage _storage;

  AuthInterceptor(this._storage);

  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) {
    final String? token = _storage.token.call();
    if (token != null) {
      options.headers.addAll({'Authorization': 'Bearer $token'});
    }
    handler.next(options);
  }
}
