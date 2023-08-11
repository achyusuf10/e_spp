import 'package:e_spp/app/features/profile/domain/repositories/profile_remote_repository.dart';
import 'package:e_spp/app/global_activities/data_activities.dart';
import 'package:e_spp/core/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UpdateUserUseCase extends UseCase<String, UpdateUserParams> {
  final ProfileRemoteRepository _repository;
  UpdateUserUseCase(this._repository);

  @override
  Future<DataActivities<String>> call(UpdateUserParams params) async {
    return await _repository.updateProfile(
      name: params.name,
      email: params.email,
      roles: params.roles,
      username: params.username,
      password: params.password,
    );
  }
}

class UpdateUserParams {
  final String name;
  final String email;
  final String roles;
  final String username;
  final String password;

  UpdateUserParams({
    required this.name,
    required this.email,
    required this.roles,
    required this.username,
    required this.password,
  });
}
