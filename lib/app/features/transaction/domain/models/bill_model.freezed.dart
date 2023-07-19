// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillModel _$BillModelFromJson(Map<String, dynamic> json) {
  return _BillModel.fromJson(json);
}

/// @nodoc
mixin _$BillModel {
  int? get id => throw _privateConstructorUsedError;
  String? get bulan =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get nominal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillModelCopyWith<BillModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillModelCopyWith<$Res> {
  factory $BillModelCopyWith(BillModel value, $Res Function(BillModel) then) =
      _$BillModelCopyWithImpl<$Res, BillModel>;
  @useResult
  $Res call(
      {int? id,
      String? bulan,
      @JsonKey(name: 'updated_at') String? updatedAt,
      int? nominal});
}

/// @nodoc
class _$BillModelCopyWithImpl<$Res, $Val extends BillModel>
    implements $BillModelCopyWith<$Res> {
  _$BillModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bulan = freezed,
    Object? updatedAt = freezed,
    Object? nominal = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      bulan: freezed == bulan
          ? _value.bulan
          : bulan // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BillModelCopyWith<$Res> implements $BillModelCopyWith<$Res> {
  factory _$$_BillModelCopyWith(
          _$_BillModel value, $Res Function(_$_BillModel) then) =
      __$$_BillModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? bulan,
      @JsonKey(name: 'updated_at') String? updatedAt,
      int? nominal});
}

/// @nodoc
class __$$_BillModelCopyWithImpl<$Res>
    extends _$BillModelCopyWithImpl<$Res, _$_BillModel>
    implements _$$_BillModelCopyWith<$Res> {
  __$$_BillModelCopyWithImpl(
      _$_BillModel _value, $Res Function(_$_BillModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bulan = freezed,
    Object? updatedAt = freezed,
    Object? nominal = freezed,
  }) {
    return _then(_$_BillModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      bulan: freezed == bulan
          ? _value.bulan
          : bulan // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BillModel implements _BillModel {
  _$_BillModel(
      {this.id = 0,
      this.bulan = '',
      @JsonKey(name: 'updated_at') this.updatedAt = '',
      this.nominal = 0});

  factory _$_BillModel.fromJson(Map<String, dynamic> json) =>
      _$$_BillModelFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? bulan;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey()
  final int? nominal;

  @override
  String toString() {
    return 'BillModel(id: $id, bulan: $bulan, updatedAt: $updatedAt, nominal: $nominal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bulan, bulan) || other.bulan == bulan) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.nominal, nominal) || other.nominal == nominal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, bulan, updatedAt, nominal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillModelCopyWith<_$_BillModel> get copyWith =>
      __$$_BillModelCopyWithImpl<_$_BillModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillModelToJson(
      this,
    );
  }
}

abstract class _BillModel implements BillModel {
  factory _BillModel(
      {final int? id,
      final String? bulan,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      final int? nominal}) = _$_BillModel;

  factory _BillModel.fromJson(Map<String, dynamic> json) =
      _$_BillModel.fromJson;

  @override
  int? get id;
  @override
  String? get bulan;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  int? get nominal;
  @override
  @JsonKey(ignore: true)
  _$$_BillModelCopyWith<_$_BillModel> get copyWith =>
      throw _privateConstructorUsedError;
}
