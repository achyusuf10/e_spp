import 'package:e_spp/app/features/transaction/domain/models/trx_model.dart';
import 'package:e_spp/app/features/transaction/domain/repositories/transaction_remote_repository.dart';
import 'package:e_spp/app/global_activities/data_activities.dart';
import 'package:e_spp/core/usecases/no_params_usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetTransactionDatasUseCase extends NoParamsUseCase {
  final TransactionRemoteRepository _repository;

  GetTransactionDatasUseCase(this._repository);
  @override
  Future<DataActivities<List<TrxModel>>> call() async {
    return _repository.fetchDatas();
  }
}
