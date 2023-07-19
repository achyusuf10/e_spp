import 'package:e_spp/app/features/auth/domain/repositories/auth_local_repository.dart';
import 'package:e_spp/app/global_activities/data_activities.dart';
import 'package:e_spp/core/usecases/no_params_usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LogoutUseCase extends NoParamsUseCase<String> {
  final AuthLocalRepository _repository;
  LogoutUseCase(this._repository);
  @override
  Future<DataActivities<String>> call() async {
    _repository.clear();
    return const DataActivities.success(data: 'success');
  }
}
