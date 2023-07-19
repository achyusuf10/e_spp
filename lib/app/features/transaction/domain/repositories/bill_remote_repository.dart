import 'package:dio/dio.dart';
import 'package:e_spp/app/features/transaction/domain/models/bill_model.dart';
import 'package:e_spp/app/global_activities/data_activities.dart';
import 'package:e_spp/constant/core/api_const.dart';
import 'package:e_spp/utils/services/api_services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BillRemoteRepository {
  final ApiServices _apiServices;

  BillRemoteRepository(this._apiServices);

  Future<DataActivities<List<BillModel>>> fetchDatas() async {
    try {
      var res = await _apiServices.call.get(ApiConst.spp);

      List<BillModel>? datas = (res.data['data'] as List<dynamic>?)
          ?.map((e) => BillModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return DataActivities.success(
        data: datas ?? [],
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
