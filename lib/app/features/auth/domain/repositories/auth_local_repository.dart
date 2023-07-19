import 'package:e_spp/app/features/auth/domain/models/user_model.dart';
import 'package:e_spp/constant/core/hive_const.dart';
import 'package:e_spp/utils/services/hive_services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthLocalRepository {
  final HiveService _hive;

  AuthLocalRepository(this._hive);

  UserModel? getUserData() {
    return _hive.get(key: HiveConst.userKey);
  }

  void saveToken(String value) {
    _hive.set(key: HiveConst.tokenKey, data: value);
  }

  void saveUserData(UserModel value) {
    _hive.set(key: HiveConst.userKey, data: value);
  }

  String getToken() {
    return _hive.get(
          key: HiveConst.tokenKey,
        ) ??
        '';
  }

  void clear() {
    _hive.reset();
  }
}
