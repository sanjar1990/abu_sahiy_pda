abstract class OtpRepo{
  Future<void> sendOtp(String email, String code);
}