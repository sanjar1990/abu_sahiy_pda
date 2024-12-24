import 'package:abu_sahiy_pdi/domain/model/storage/storage.dart';
import 'package:abu_sahiy_pdi/domain/repo/create_pin_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:CreatePinRepo)
class CreatePinRepoImpl extends CreatePinRepo{
  CreatePinRepoImpl(this._storage);
  final Storage _storage;
  @override
  String getPin() {
  return _storage.pinCode.call()??'';
  }

  @override
  Future<void> setPin(String pin) async {
    await _storage.pinCode.set(pin);
  }

}