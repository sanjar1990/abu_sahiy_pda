abstract class AuthRepository {
  Future<void> registration({
    required String email,
    required String name,
    required String password,
  });
  Future<void> signIn({
    required String email,
    required String password,
  });
  Future<void>setToken(String token);
  String getToken();
}