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
      options.headers.addAll({ 'Authorization': 'X-ABU-PDA_m9c283ytcn-27ymcpqcustomT'});
    handler.next(options);
  }
}
