part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required UserModel userData,
    @Default('') String appVersion,
  }) = _HomeState;
}
