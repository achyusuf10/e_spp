import 'package:e_spp/app/features/auth/domain/models/user_model.dart';
import 'package:e_spp/app/features/auth/domain/repositories/auth_local_repository.dart';
import 'package:e_spp/app/global_activities/data_activities.dart';
import 'package:e_spp/core/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UpdateUserProfileUseCase extends UseCase<String, UserModel> {
  final AuthLocalRepository _repository;

  UpdateUserProfileUseCase(this._repository);
  @override
  Future<DataActivities<String>> call(UserModel params) async {
    _repository.saveUserData(params);
    return const DataActivities.success(data: 'Success');
  }
}
