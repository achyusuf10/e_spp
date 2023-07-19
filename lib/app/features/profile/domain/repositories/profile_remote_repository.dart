import 'package:e_spp/utils/services/api_services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ProfileRemoteRepository {
  final ApiServices _apiServices;

  ProfileRemoteRepository(this._apiServices);
}
