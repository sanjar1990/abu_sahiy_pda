abstract class SignUpRepo{
  Future<void>setEmail(String email);
  String getEmail();
  Future<void>setUserName(String userName);
  String getUserName();
}