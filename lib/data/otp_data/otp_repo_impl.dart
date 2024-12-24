import 'package:abu_sahiy_pdi/data/otp_data/otp_api.dart';
import 'package:abu_sahiy_pdi/domain/otp/otp_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OtpRepo)
class OtpRepoImpl extends OtpRepo{
  final OtpApi _api;

  OtpRepoImpl(this._api);
  @override
  Future<void> sendOtp(String email, String code)async {
    await _api.otpVerify(email: email, code: code);
  }

}