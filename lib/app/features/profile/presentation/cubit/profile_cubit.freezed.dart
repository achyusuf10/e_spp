// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  bool get isFormEdited => throw _privateConstructorUsedError;
  File? get selectedImageProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call({bool isFormEdited, File? selectedImageProfile});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFormEdited = null,
    Object? selectedImageProfile = freezed,
  }) {
    return _then(_value.copyWith(
      isFormEdited: null == isFormEdited
          ? _value.isFormEdited
          : isFormEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedImageProfile: freezed == selectedImageProfile
          ? _value.selectedImageProfile
          : selectedImageProfile // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFormEdited, File? selectedImageProfile});
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFormEdited = null,
    Object? selectedImageProfile = freezed,
  }) {
    return _then(_$_ProfileState(
      isFormEdited: null == isFormEdited
          ? _value.isFormEdited
          : isFormEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedImageProfile: freezed == selectedImageProfile
          ? _value.selectedImageProfile
          : selectedImageProfile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState({this.isFormEdited = false, this.selectedImageProfile});

  @override
  @JsonKey()
  final bool isFormEdited;
  @override
  final File? selectedImageProfile;

  @override
  String toString() {
    return 'ProfileState(isFormEdited: $isFormEdited, selectedImageProfile: $selectedImageProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.isFormEdited, isFormEdited) ||
                other.isFormEdited == isFormEdited) &&
            (identical(other.selectedImageProfile, selectedImageProfile) ||
                other.selectedImageProfile == selectedImageProfile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isFormEdited, selectedImageProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final bool isFormEdited,
      final File? selectedImageProfile}) = _$_ProfileState;

  @override
  bool get isFormEdited;
  @override
  File? get selectedImageProfile;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
