// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trx_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrxModel _$TrxModelFromJson(Map<String, dynamic> json) {
  return _TrxModel.fromJson(json);
}

/// @nodoc
mixin _$TrxModel {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'tarif_spp_id')
  int? get tarifSppId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tarif_spp_id')
  set tarifSppId(int? value) => throw _privateConstructorUsedError;
  int? get nisn => throw _privateConstructorUsedError;
  set nisn(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'waktu_transaksi')
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'waktu_transaksi')
  set time(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'kode_pembayaran')
  String? get kodePembayaran => throw _privateConstructorUsedError;
  @JsonKey(name: 'kode_pembayaran')
  set kodePembayaran(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_pembayaran')
  String? get statusPembayaran => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_pembayaran')
  set statusPembayaran(String? value) => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  UserModel? get user => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  set user(UserModel? value) => throw _privateConstructorUsedError;
  BillModel? get spp => throw _privateConstructorUsedError;
  set spp(BillModel? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrxModelCopyWith<TrxModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrxModelCopyWith<$Res> {
  factory $TrxModelCopyWith(TrxModel value, $Res Function(TrxModel) then) =
      _$TrxModelCopyWithImpl<$Res, TrxModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'tarif_spp_id') int? tarifSppId,
      int? nisn,
      @JsonKey(name: 'waktu_transaksi') String? time,
      @JsonKey(name: 'kode_pembayaran') String? kodePembayaran,
      @JsonKey(name: 'status_pembayaran') String? statusPembayaran,
      @JsonKey(includeToJson: false) UserModel? user,
      BillModel? spp});

  $UserModelCopyWith<$Res>? get user;
  $BillModelCopyWith<$Res>? get spp;
}

/// @nodoc
class _$TrxModelCopyWithImpl<$Res, $Val extends TrxModel>
    implements $TrxModelCopyWith<$Res> {
  _$TrxModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tarifSppId = freezed,
    Object? nisn = freezed,
    Object? time = freezed,
    Object? kodePembayaran = freezed,
    Object? statusPembayaran = freezed,
    Object? user = freezed,
    Object? spp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tarifSppId: freezed == tarifSppId
          ? _value.tarifSppId
          : tarifSppId // ignore: cast_nullable_to_non_nullable
              as int?,
      nisn: freezed == nisn
          ? _value.nisn
          : nisn // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      kodePembayaran: freezed == kodePembayaran
          ? _value.kodePembayaran
          : kodePembayaran // ignore: cast_nullable_to_non_nullable
              as String?,
      statusPembayaran: freezed == statusPembayaran
          ? _value.statusPembayaran
          : statusPembayaran // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      spp: freezed == spp
          ? _value.spp
          : spp // ignore: cast_nullable_to_non_nullable
              as BillModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BillModelCopyWith<$Res>? get spp {
    if (_value.spp == null) {
      return null;
    }

    return $BillModelCopyWith<$Res>(_value.spp!, (value) {
      return _then(_value.copyWith(spp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TrxModelCopyWith<$Res> implements $TrxModelCopyWith<$Res> {
  factory _$$_TrxModelCopyWith(
          _$_TrxModel value, $Res Function(_$_TrxModel) then) =
      __$$_TrxModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'tarif_spp_id') int? tarifSppId,
      int? nisn,
      @JsonKey(name: 'waktu_transaksi') String? time,
      @JsonKey(name: 'kode_pembayaran') String? kodePembayaran,
      @JsonKey(name: 'status_pembayaran') String? statusPembayaran,
      @JsonKey(includeToJson: false) UserModel? user,
      BillModel? spp});

  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $BillModelCopyWith<$Res>? get spp;
}

/// @nodoc
class __$$_TrxModelCopyWithImpl<$Res>
    extends _$TrxModelCopyWithImpl<$Res, _$_TrxModel>
    implements _$$_TrxModelCopyWith<$Res> {
  __$$_TrxModelCopyWithImpl(
      _$_TrxModel _value, $Res Function(_$_TrxModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tarifSppId = freezed,
    Object? nisn = freezed,
    Object? time = freezed,
    Object? kodePembayaran = freezed,
    Object? statusPembayaran = freezed,
    Object? user = freezed,
    Object? spp = freezed,
  }) {
    return _then(_$_TrxModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tarifSppId: freezed == tarifSppId
          ? _value.tarifSppId
          : tarifSppId // ignore: cast_nullable_to_non_nullable
              as int?,
      nisn: freezed == nisn
          ? _value.nisn
          : nisn // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      kodePembayaran: freezed == kodePembayaran
          ? _value.kodePembayaran
          : kodePembayaran // ignore: cast_nullable_to_non_nullable
              as String?,
      statusPembayaran: freezed == statusPembayaran
          ? _value.statusPembayaran
          : statusPembayaran // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      spp: freezed == spp
          ? _value.spp
          : spp // ignore: cast_nullable_to_non_nullable
              as BillModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrxModel implements _TrxModel {
  _$_TrxModel(
      {this.id,
      @JsonKey(name: 'tarif_spp_id') this.tarifSppId,
      this.nisn,
      @JsonKey(name: 'waktu_transaksi') this.time,
      @JsonKey(name: 'kode_pembayaran') this.kodePembayaran,
      @JsonKey(name: 'status_pembayaran') this.statusPembayaran,
      @JsonKey(includeToJson: false) this.user,
      this.spp});

  factory _$_TrxModel.fromJson(Map<String, dynamic> json) =>
      _$$_TrxModelFromJson(json);

  @override
  int? id;
  @override
  @JsonKey(name: 'tarif_spp_id')
  int? tarifSppId;
  @override
  int? nisn;
  @override
  @JsonKey(name: 'waktu_transaksi')
  String? time;
  @override
  @JsonKey(name: 'kode_pembayaran')
  String? kodePembayaran;
  @override
  @JsonKey(name: 'status_pembayaran')
  String? statusPembayaran;
  @override
  @JsonKey(includeToJson: false)
  UserModel? user;
  @override
  BillModel? spp;

  @override
  String toString() {
    return 'TrxModel(id: $id, tarifSppId: $tarifSppId, nisn: $nisn, time: $time, kodePembayaran: $kodePembayaran, statusPembayaran: $statusPembayaran, user: $user, spp: $spp)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrxModelCopyWith<_$_TrxModel> get copyWith =>
      __$$_TrxModelCopyWithImpl<_$_TrxModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrxModelToJson(
      this,
    );
  }
}

abstract class _TrxModel implements TrxModel {
  factory _TrxModel(
      {int? id,
      @JsonKey(name: 'tarif_spp_id') int? tarifSppId,
      int? nisn,
      @JsonKey(name: 'waktu_transaksi') String? time,
      @JsonKey(name: 'kode_pembayaran') String? kodePembayaran,
      @JsonKey(name: 'status_pembayaran') String? statusPembayaran,
      @JsonKey(includeToJson: false) UserModel? user,
      BillModel? spp}) = _$_TrxModel;

  factory _TrxModel.fromJson(Map<String, dynamic> json) = _$_TrxModel.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  @JsonKey(name: 'tarif_spp_id')
  int? get tarifSppId;
  @JsonKey(name: 'tarif_spp_id')
  set tarifSppId(int? value);
  @override
  int? get nisn;
  set nisn(int? value);
  @override
  @JsonKey(name: 'waktu_transaksi')
  String? get time;
  @JsonKey(name: 'waktu_transaksi')
  set time(String? value);
  @override
  @JsonKey(name: 'kode_pembayaran')
  String? get kodePembayaran;
  @JsonKey(name: 'kode_pembayaran')
  set kodePembayaran(String? value);
  @override
  @JsonKey(name: 'status_pembayaran')
  String? get statusPembayaran;
  @JsonKey(name: 'status_pembayaran')
  set statusPembayaran(String? value);
  @override
  @JsonKey(includeToJson: false)
  UserModel? get user;
  @JsonKey(includeToJson: false)
  set user(UserModel? value);
  @override
  BillModel? get spp;
  set spp(BillModel? value);
  @override
  @JsonKey(ignore: true)
  _$$_TrxModelCopyWith<_$_TrxModel> get copyWith =>
      throw _privateConstructorUsedError;
}
