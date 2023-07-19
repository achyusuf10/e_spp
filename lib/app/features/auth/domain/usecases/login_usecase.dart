import 'package:e_spp/app/features/auth/domain/repositories/auth_remote_repository.dart';
import 'package:e_spp/app/global_activities/data_activities.dart';
import 'package:e_spp/core/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginUseCase extends UseCase<String, LoginParams> {
  final AuthRemoteRepository _repository;

  LoginUseCase(this._repository);
  @override
  Future<DataActivities<String>> call(params) async {
    var res = await _repository.login(
      email: params.email,
      password: params.password,
    );

    return res;
  }
}

class LoginParams {
  final String email;
  final String password;

  LoginParams({
    required this.email,
    required this.password,
  });
}
