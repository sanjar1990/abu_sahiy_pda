import 'package:abu_sahiy_pdi/domain/model/storage/storage.dart';
import 'package:abu_sahiy_pdi/domain/repo/sign_up_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:SignUpRepo)
class SignUpRepoImpl extends SignUpRepo{
  SignUpRepoImpl(this._storage);
  final Storage _storage;

  @override
  String getEmail() {
   return _storage.email.call()??'';
  }

  @override
  Future<void> setEmail(String email) async{
   await _storage.email.set(email);
  }

  @override
  String getUserName() {
    return _storage.userName.call()??'';
  }

  @override
  Future<void> setUserName(String userName)async {
  await _storage.userName.set(userName);
  }

}