import 'package:abu_sahiy_pdi/domain/model/storage/storage.dart';
import 'package:abu_sahiy_pdi/domain/repo/fill_profile_info_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as:FillProfileInfoRepo)
class FillProfileInfoRepoImpl extends FillProfileInfoRepo{
  FillProfileInfoRepoImpl(this._storage);
  final Storage _storage;
  @override
  String getBirthDate() {
    return _storage.birthDate.call()??'';
  }

  @override
  String getEmail() {
   return _storage.email.call()??'';
  }

  @override
  String getFullName() {
 return _storage.fullName.call()??'';
  }

  @override
  String getGender() {
    return _storage.gender.call()??'';
  }

  @override
  String getNickName() {
    return _storage.nickName.call()??'';
  }

  @override
  Future<void> setBirthDate(String birthDate) async {
    await _storage.birthDate.set(birthDate);
  }

  @override
  Future<void> setEmail(String email) async {
    await _storage.email.set(email);

  }

  @override
  Future<void> setFullName(String fullName) async{
   await _storage.fullName.set(fullName);
  }

  @override
  Future<void> setGender(String gender) async {
    await _storage.gender.set(gender);

  }

  @override
  Future<void> setNickName(String nickName) async {
    await _storage.nickName.set(nickName);
  }

  @override
  String getImagePath() {
  return _storage.imagePath.call()??'';
  }

  @override
  Future<void> setImagePath(String imagePath)async {
    await _storage.imagePath.set(imagePath);

  }
  
}