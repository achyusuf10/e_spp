part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isFormEdited,
    File? selectedImageProfile,
  }) = _ProfileState;
}
