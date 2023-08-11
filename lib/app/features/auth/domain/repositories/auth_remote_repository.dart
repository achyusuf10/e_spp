import 'package:dio/dio.dart';
import 'package:e_spp/app/features/auth/domain/models/user_model.dart';
import 'package:e_spp/app/features/auth/domain/repositories/auth_local_repository.dart';
import 'package:e_spp/app/global_activities/data_activities.dart';
import 'package:e_spp/constant/core/api_const.dart';
import 'package:e_spp/utils/services/api_services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthRemoteRepository {
  final ApiServices _apiServices;
  final AuthLocalRepository _localRepository;

  AuthRemoteRepository(this._apiServices, this._localRepository);

  Future<DataActivities<String>> login({
    required String email,
    required String password,
  }) async {
    try {
      var res = await _apiServices.call.post(
        ApiConst.login,
        data: {
          'username': email,
          'password': password,
        },
      );
      String token = res.data['data']['token'];
      _localRepository.saveToken(token);
      return DataActivities.success(
        data: token,
      );
    } on DioException catch (e) {
      return DataActivities.error(
        message:
            e.response?.data['message'] ?? "Terjadi kesalahan pada sistem.",
      );
    }
  }

  Future<DataActivities<UserModel>> getProfile() async {
    try {
      var res = await _apiServices.call.get(
        ApiConst.getProfile,
      );

      return DataActivities.success(
        data: UserModel.fromJson(res.data['data']),
      );
    } on DioException catch (e) {
      return DataActivities.error(
        message:
            e.response?.data['message'] ?? "Terjadi kesalahan pada sistem.",
      );
    } catch (err) {
      return DataActivities.error(
        message: err.toString(),
      );
    }
  }
}
