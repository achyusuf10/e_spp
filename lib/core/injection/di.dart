import 'package:e_spp/core/injection/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final di = GetIt.instance;

@InjectableInit(
  generateForDir: [
    'lib/app',
    'lib/core',
    'lib/config/routes',
    'lib/utils/services',
    'lib/utils/functions',
  ],
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() async {
  await $initGetIt(di);
}
