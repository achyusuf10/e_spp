import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_activities.freezed.dart';

@freezed
class DataActivities<T> with _$DataActivities<T> {
  const factory DataActivities.success({required T data}) =
      DataActivitiesSuccess<T>;
  const factory DataActivities.error({
    required String message,
    T? data,
    int? code,
    Exception? exception,
  }) = DataActivitiesError<T>;
}
