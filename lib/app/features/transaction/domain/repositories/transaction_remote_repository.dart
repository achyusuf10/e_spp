// ignore_for_file: unused_result

import 'package:dio/dio.dart';
import 'package:e_spp/app/features/transaction/domain/models/trx_model.dart';
import 'package:e_spp/app/global_activities/data_activities.dart';
import 'package:e_spp/constant/core/api_const.dart';
import 'package:e_spp/utils/services/api_services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TransactionRemoteRepository {
  final ApiServices _apiServices;

  TransactionRemoteRepository(this._apiServices);

  Future<DataActivities<List<TrxModel>>> fetchDatas() async {
    try {
      var res = await _apiServices.call.get('${ApiConst.transaction}/siswa');
      var listDatas = (res.data['data'] as List<dynamic>?);

      List<TrxModel> datas = (listDatas ?? [])
          .map((e) => TrxModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return DataActivities.success(
        data: datas,
      );
    } on DioException catch (e) {
      return DataActivities.error(
        message: e.response?.data['message'] ??
            e.message ??
            "Terjadi kesalahan pada sistem.",
      );
    }
  }
}
