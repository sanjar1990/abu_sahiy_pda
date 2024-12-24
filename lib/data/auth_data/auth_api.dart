import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthApi {
  final Dio _dio;

  AuthApi(this._dio);

  Future<Response> registration(
      {required String email,
      required String name,
      required String password}) async{
    final body={
      "email": email,
      "name": name,
      "password": password,
      "confirmPassword": password
    };
    return _dio.post('/api/v1/auth/register', data: body);
  }

  Future<Response> signIn(
      {required String email,
        required String password}) async{
    final body={
      "email": email,
      "password": password,
    };
    return _dio.post('account/login/', data: body);
  }
}
