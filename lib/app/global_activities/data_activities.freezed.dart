// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_activities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataActivities<T> {
  T? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(
            String message, T? data, int? code, Exception? exception)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(String message, T? data, int? code, Exception? exception)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message, T? data, int? code, Exception? exception)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataActivitiesSuccess<T> value) success,
    required TResult Function(DataActivitiesError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataActivitiesSuccess<T> value)? success,
    TResult? Function(DataActivitiesError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataActivitiesSuccess<T> value)? success,
    TResult Function(DataActivitiesError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataActivitiesCopyWith<T, $Res> {
  factory $DataActivitiesCopyWith(
          DataActivities<T> value, $Res Function(DataActivities<T>) then) =
      _$DataActivitiesCopyWithImpl<T, $Res, DataActivities<T>>;
}

/// @nodoc
class _$DataActivitiesCopyWithImpl<T, $Res, $Val extends DataActivities<T>>
    implements $DataActivitiesCopyWith<T, $Res> {
  _$DataActivitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataActivitiesSuccessCopyWith<T, $Res> {
  factory _$$DataActivitiesSuccessCopyWith(_$DataActivitiesSuccess<T> value,
          $Res Function(_$DataActivitiesSuccess<T>) then) =
      __$$DataActivitiesSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$DataActivitiesSuccessCopyWithImpl<T, $Res>
    extends _$DataActivitiesCopyWithImpl<T, $Res, _$DataActivitiesSuccess<T>>
    implements _$$DataActivitiesSuccessCopyWith<T, $Res> {
  __$$DataActivitiesSuccessCopyWithImpl(_$DataActivitiesSuccess<T> _value,
      $Res Function(_$DataActivitiesSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataActivitiesSuccess<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DataActivitiesSuccess<T> implements DataActivitiesSuccess<T> {
  const _$DataActivitiesSuccess({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'DataActivities<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataActivitiesSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataActivitiesSuccessCopyWith<T, _$DataActivitiesSuccess<T>>
      get copyWith =>
          __$$DataActivitiesSuccessCopyWithImpl<T, _$DataActivitiesSuccess<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(
            String message, T? data, int? code, Exception? exception)
        error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(String message, T? data, int? code, Exception? exception)?
        error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message, T? data, int? code, Exception? exception)?
        error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataActivitiesSuccess<T> value) success,
    required TResult Function(DataActivitiesError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataActivitiesSuccess<T> value)? success,
    TResult? Function(DataActivitiesError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataActivitiesSuccess<T> value)? success,
    TResult Function(DataActivitiesError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DataActivitiesSuccess<T> implements DataActivities<T> {
  const factory DataActivitiesSuccess({required final T data}) =
      _$DataActivitiesSuccess<T>;

  @override
  T get data;
  @JsonKey(ignore: true)
  _$$DataActivitiesSuccessCopyWith<T, _$DataActivitiesSuccess<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataActivitiesErrorCopyWith<T, $Res> {
  factory _$$DataActivitiesErrorCopyWith(_$DataActivitiesError<T> value,
          $Res Function(_$DataActivitiesError<T>) then) =
      __$$DataActivitiesErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message, T? data, int? code, Exception? exception});
}

/// @nodoc
class __$$DataActivitiesErrorCopyWithImpl<T, $Res>
    extends _$DataActivitiesCopyWithImpl<T, $Res, _$DataActivitiesError<T>>
    implements _$$DataActivitiesErrorCopyWith<T, $Res> {
  __$$DataActivitiesErrorCopyWithImpl(_$DataActivitiesError<T> _value,
      $Res Function(_$DataActivitiesError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? data = freezed,
    Object? code = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$DataActivitiesError<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$DataActivitiesError<T> implements DataActivitiesError<T> {
  const _$DataActivitiesError(
      {required this.message, this.data, this.code, this.exception});

  @override
  final String message;
  @override
  final T? data;
  @override
  final int? code;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'DataActivities<$T>.error(message: $message, data: $data, code: $code, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataActivitiesError<T> &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(data), code, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataActivitiesErrorCopyWith<T, _$DataActivitiesError<T>> get copyWith =>
      __$$DataActivitiesErrorCopyWithImpl<T, _$DataActivitiesError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(
            String message, T? data, int? code, Exception? exception)
        error,
  }) {
    return error(message, data, code, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(String message, T? data, int? code, Exception? exception)?
        error,
  }) {
    return error?.call(message, data, code, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(String message, T? data, int? code, Exception? exception)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, data, code, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataActivitiesSuccess<T> value) success,
    required TResult Function(DataActivitiesError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataActivitiesSuccess<T> value)? success,
    TResult? Function(DataActivitiesError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataActivitiesSuccess<T> value)? success,
    TResult Function(DataActivitiesError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DataActivitiesError<T> implements DataActivities<T> {
  const factory DataActivitiesError(
      {required final String message,
      final T? data,
      final int? code,
      final Exception? exception}) = _$DataActivitiesError<T>;

  String get message;
  @override
  T? get data;
  int? get code;
  Exception? get exception;
  @JsonKey(ignore: true)
  _$$DataActivitiesErrorCopyWith<T, _$DataActivitiesError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
