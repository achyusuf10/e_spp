import 'package:dio/dio.dart';
import 'package:e_spp/app/global_activities/data_activities.dart';
import 'package:e_spp/utils/services/api_services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ProfileRemoteRepository {
  final ApiServices _apiServices;

  ProfileRemoteRepository(this._apiServices);

  Future<DataActivities<String>> updateProfile({
    required String name,
    required String email,
    required String roles,
    required String username,
    required String password,
  }) async {
    try {
      var res = await _apiServices.call.put(
        'update-profile',
        data: {
          'name': name,
          'email': email,
          'roles': roles,
          'username': username,
          'password': password,
        },
      );

      return DataActivities.success(
        data: res.data['message'] ?? 'Berhasil',
      );
    } on DioException catch (e) {
      try {
        return DataActivities.error(
          message: (e.response?.data['message'].toString()) ??
              "Terjadi kesalahan pada sistem.",
        );
      } catch (e) {
        return const DataActivities.error(
          message: "Terjadi kesalahan pada sistem.",
        );
      }
    } catch (err) {
      return DataActivities.error(
        message: err.toString(),
      );
    }
  }
}
