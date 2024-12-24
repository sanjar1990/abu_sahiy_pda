import 'package:abu_sahiy_pdi/common/base/base_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class Storage {
  Storage(this._box);

  final Box _box;

  @FactoryMethod(preResolve: true)
  static Future<Storage> create() async {
    await Hive.initFlutter();
    final box = await Hive.openBox('storage');
    return Storage(box);
  }

  BaseStorage<String> get token => BaseStorage(_box, 'token');
  BaseStorage<bool> get onboarded => BaseStorage(_box, 'onboarded');
  BaseStorage<String> get fullName => BaseStorage(_box, 'fullName');
  BaseStorage<String> get nickName => BaseStorage(_box, 'nickName');
  BaseStorage<String> get userName => BaseStorage(_box, 'userName');
  BaseStorage<String> get birthDate => BaseStorage(_box, 'birthDate');
  BaseStorage<String> get email => BaseStorage(_box, 'email');
  BaseStorage<String> get gender => BaseStorage(_box, 'gender');
  BaseStorage<String> get imagePath => BaseStorage(_box, 'imagePath');
  BaseStorage<String> get pinCode => BaseStorage(_box, 'pinCode');
  BaseStorage<String> get phone => BaseStorage(_box, 'phone');


}
