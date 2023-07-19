import 'package:e_spp/app/features/transaction/domain/repositories/transaction_remote_repository.dart';
import 'package:e_spp/app/global_activities/data_activities.dart';
import 'package:e_spp/core/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetDetailTransactionUseCase
    extends UseCase<String, GetDetailTransactionParams> {
  final TransactionRemoteRepository _repository;

  GetDetailTransactionUseCase(this._repository);
  @override
  Future<DataActivities<String>> call(GetDetailTransactionParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class GetDetailTransactionParams {}
