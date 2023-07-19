import 'package:e_spp/app/global_activities/data_activities.dart';

abstract class NoParamsUseCase<ReturnSuccessType> {
  const NoParamsUseCase();
  Future<DataActivities<ReturnSuccessType>> call();
}
