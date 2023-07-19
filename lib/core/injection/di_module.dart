import 'package:e_spp/utils/services/hive_services.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DIModules {
  @lazySingleton
  @preResolve
  Future<HiveService> get box => HiveService.instance();
}
