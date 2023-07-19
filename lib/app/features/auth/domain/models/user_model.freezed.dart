// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserModel {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get username => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get roles => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get nisn => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'jenis_kelamin')
  String? get gender => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get alamat => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'no_hp')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? name,
      @HiveField(2) String? username,
      @HiveField(3) String? email,
      @HiveField(4) String? roles,
      @HiveField(5) int? nisn,
      @HiveField(6) @JsonKey(name: 'jenis_kelamin') String? gender,
      @HiveField(7) String? alamat,
      @HiveField(8) @JsonKey(name: 'no_hp') String? phoneNumber,
      @HiveField(9) String? status});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? roles = freezed,
    Object? nisn = freezed,
    Object? gender = freezed,
    Object? alamat = freezed,
    Object? phoneNumber = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String?,
      nisn: freezed == nisn
          ? _value.nisn
          : nisn // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? name,
      @HiveField(2) String? username,
      @HiveField(3) String? email,
      @HiveField(4) String? roles,
      @HiveField(5) int? nisn,
      @HiveField(6) @JsonKey(name: 'jenis_kelamin') String? gender,
      @HiveField(7) String? alamat,
      @HiveField(8) @JsonKey(name: 'no_hp') String? phoneNumber,
      @HiveField(9) String? status});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? roles = freezed,
    Object? nisn = freezed,
    Object? gender = freezed,
    Object? alamat = freezed,
    Object? phoneNumber = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_UserModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String?,
      nisn: freezed == nisn
          ? _value.nisn
          : nisn // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      alamat: freezed == alamat
          ? _value.alamat
          : alamat // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 1, adapterName: 'UserModelAdapter')
class _$_UserModel implements _UserModel {
  _$_UserModel(
      {@HiveField(0) this.id,
      @HiveField(1) this.name,
      @HiveField(2) this.username,
      @HiveField(3) this.email,
      @HiveField(4) this.roles,
      @HiveField(5) this.nisn,
      @HiveField(6) @JsonKey(name: 'jenis_kelamin') this.gender,
      @HiveField(7) this.alamat,
      @HiveField(8) @JsonKey(name: 'no_hp') this.phoneNumber,
      @HiveField(9) this.status});

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final String? username;
  @override
  @HiveField(3)
  final String? email;
  @override
  @HiveField(4)
  final String? roles;
  @override
  @HiveField(5)
  final int? nisn;
  @override
  @HiveField(6)
  @JsonKey(name: 'jenis_kelamin')
  final String? gender;
  @override
  @HiveField(7)
  final String? alamat;
  @override
  @HiveField(8)
  @JsonKey(name: 'no_hp')
  final String? phoneNumber;
  @override
  @HiveField(9)
  final String? status;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, username: $username, email: $email, roles: $roles, nisn: $nisn, gender: $gender, alamat: $alamat, phoneNumber: $phoneNumber, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.roles, roles) || other.roles == roles) &&
            (identical(other.nisn, nisn) || other.nisn == nisn) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.alamat, alamat) || other.alamat == alamat) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, username, email, roles,
      nisn, gender, alamat, phoneNumber, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? name,
      @HiveField(2) final String? username,
      @HiveField(3) final String? email,
      @HiveField(4) final String? roles,
      @HiveField(5) final int? nisn,
      @HiveField(6) @JsonKey(name: 'jenis_kelamin') final String? gender,
      @HiveField(7) final String? alamat,
      @HiveField(8) @JsonKey(name: 'no_hp') final String? phoneNumber,
      @HiveField(9) final String? status}) = _$_UserModel;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  String? get username;
  @override
  @HiveField(3)
  String? get email;
  @override
  @HiveField(4)
  String? get roles;
  @override
  @HiveField(5)
  int? get nisn;
  @override
  @HiveField(6)
  @JsonKey(name: 'jenis_kelamin')
  String? get gender;
  @override
  @HiveField(7)
  String? get alamat;
  @override
  @HiveField(8)
  @JsonKey(name: 'no_hp')
  String? get phoneNumber;
  @override
  @HiveField(9)
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
