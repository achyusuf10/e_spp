import 'package:e_spp/app/features/transaction/domain/models/bill_model.dart';
import 'package:e_spp/app/features/transaction/domain/repositories/bill_remote_repository.dart';
import 'package:e_spp/app/global_activities/data_activities.dart';
import 'package:e_spp/core/usecases/no_params_usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetBillDatasUseCase extends NoParamsUseCase {
  final BillRemoteRepository _repository;

  GetBillDatasUseCase(this._repository);

  @override
  Future<DataActivities<List<BillModel>>> call() async {
    return _repository.fetchDatas();
  }
}
