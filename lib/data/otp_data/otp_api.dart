import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class OtpApi {
  final Dio _dio;

  OtpApi(this._dio);
  Future<Response> otpVerify({required String email, required String code})async{
    final body={
      "email": email,
      "code": code
    };
    return await  _dio.post('/api/v1/auth/verify/email',data: body);
  }
}