import 'package:abu_sahiy_pdi/data/auth_data/auth_api.dart';
import 'package:abu_sahiy_pdi/domain/auth/auth_repo.dart';
import 'package:abu_sahiy_pdi/domain/model/storage/storage.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepoImpl extends AuthRepository {
  final AuthApi authApi;
  final Storage _storage;

  AuthRepoImpl(this.authApi, this._storage);

  @override
  Future<void> registration(
      {required String email,
      required String name,
      required String password}) async {
    await authApi.registration(email: email, name: name, password: password);
  }

  @override
  Future<void> signIn({required String email, required String password}) async {
    final res = await authApi.signIn(email: email, password: password);
    var token = res.data['access'];
    setToken(token);
  }

  @override
  String getToken() {
    return _storage.token.call() ?? '';
  }

  @override
  Future<void> setToken(String token) async {
    await _storage.token.set(token);
  }
}
