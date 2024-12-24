import 'package:abu_sahiy_pdi/domain/model/storage/storage.dart';
import 'package:abu_sahiy_pdi/domain/repo/recover_repo.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: RecoverRepo)
class RecoverRepoImpl extends RecoverRepo{
  RecoverRepoImpl(this._storage);

  final Storage _storage;
  @override
  String getPhone() {
   return _storage.phone.call()??'';
  }

  @override
  Future<void> setPhone(String phone)async {
    await _storage.phone.set(phone);
  }

}