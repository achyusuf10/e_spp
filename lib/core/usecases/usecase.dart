import 'package:e_spp/app/global_activities/data_activities.dart';

abstract class UseCase<ReturnSuccessType, Params> {
  const UseCase();
  Future<DataActivities<ReturnSuccessType>> call(Params params);
}
