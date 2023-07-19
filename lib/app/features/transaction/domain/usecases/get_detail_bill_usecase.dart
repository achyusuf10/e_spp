import 'package:e_spp/app/features/transaction/domain/repositories/bill_remote_repository.dart';
import 'package:e_spp/app/global_activities/data_activities.dart';
import 'package:e_spp/core/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetDetailBillUseCase extends UseCase<String, GetDetailBillParams> {
  final BillRemoteRepository _repository;

  GetDetailBillUseCase(this._repository);
  @override
  Future<DataActivities<String>> call(GetDetailBillParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class GetDetailBillParams {}
