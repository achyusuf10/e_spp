import 'package:e_spp/app/features/auth/domain/models/user_model.dart';
import 'package:e_spp/app/features/auth/domain/repositories/auth_local_repository.dart';
import 'package:e_spp/app/features/auth/domain/repositories/auth_remote_repository.dart';
import 'package:e_spp/app/global_activities/data_activities.dart';
import 'package:e_spp/core/usecases/no_params_usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetUserProfileUseCase extends NoParamsUseCase<UserModel> {
  final AuthRemoteRepository _repository;
  final AuthLocalRepository _localRepository;

  GetUserProfileUseCase(this._repository, this._localRepository);
  @override
  Future<DataActivities<UserModel>> call() async {
    return _repository.getProfile();
  }

  Future<DataActivities<UserModel>> callLocal() async {
    var res = _localRepository.getUserData();
    if (res == null) {
      return const DataActivities.error(message: 'Kosong');
    }
    return DataActivities.success(data: res);
  }
}
