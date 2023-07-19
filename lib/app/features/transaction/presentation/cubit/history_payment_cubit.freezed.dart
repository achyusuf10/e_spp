// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryPaymentState {
  ViewState get viewState => throw _privateConstructorUsedError;
  int get selectedFilter => throw _privateConstructorUsedError;
  List<TrxModel> get listDatas => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryPaymentStateCopyWith<HistoryPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryPaymentStateCopyWith<$Res> {
  factory $HistoryPaymentStateCopyWith(
          HistoryPaymentState value, $Res Function(HistoryPaymentState) then) =
      _$HistoryPaymentStateCopyWithImpl<$Res, HistoryPaymentState>;
  @useResult
  $Res call(
      {ViewState viewState, int selectedFilter, List<TrxModel> listDatas});
}

/// @nodoc
class _$HistoryPaymentStateCopyWithImpl<$Res, $Val extends HistoryPaymentState>
    implements $HistoryPaymentStateCopyWith<$Res> {
  _$HistoryPaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
    Object? selectedFilter = null,
    Object? listDatas = null,
  }) {
    return _then(_value.copyWith(
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as int,
      listDatas: null == listDatas
          ? _value.listDatas
          : listDatas // ignore: cast_nullable_to_non_nullable
              as List<TrxModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryPaymentStateCopyWith<$Res>
    implements $HistoryPaymentStateCopyWith<$Res> {
  factory _$$_HistoryPaymentStateCopyWith(_$_HistoryPaymentState value,
          $Res Function(_$_HistoryPaymentState) then) =
      __$$_HistoryPaymentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ViewState viewState, int selectedFilter, List<TrxModel> listDatas});
}

/// @nodoc
class __$$_HistoryPaymentStateCopyWithImpl<$Res>
    extends _$HistoryPaymentStateCopyWithImpl<$Res, _$_HistoryPaymentState>
    implements _$$_HistoryPaymentStateCopyWith<$Res> {
  __$$_HistoryPaymentStateCopyWithImpl(_$_HistoryPaymentState _value,
      $Res Function(_$_HistoryPaymentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
    Object? selectedFilter = null,
    Object? listDatas = null,
  }) {
    return _then(_$_HistoryPaymentState(
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as int,
      listDatas: null == listDatas
          ? _value._listDatas
          : listDatas // ignore: cast_nullable_to_non_nullable
              as List<TrxModel>,
    ));
  }
}

/// @nodoc

class _$_HistoryPaymentState implements _HistoryPaymentState {
  const _$_HistoryPaymentState(
      {this.viewState = ViewState.loading,
      this.selectedFilter = 0,
      final List<TrxModel> listDatas = const []})
      : _listDatas = listDatas;

  @override
  @JsonKey()
  final ViewState viewState;
  @override
  @JsonKey()
  final int selectedFilter;
  final List<TrxModel> _listDatas;
  @override
  @JsonKey()
  List<TrxModel> get listDatas {
    if (_listDatas is EqualUnmodifiableListView) return _listDatas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listDatas);
  }

  @override
  String toString() {
    return 'HistoryPaymentState(viewState: $viewState, selectedFilter: $selectedFilter, listDatas: $listDatas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryPaymentState &&
            (identical(other.viewState, viewState) ||
                other.viewState == viewState) &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter) &&
            const DeepCollectionEquality()
                .equals(other._listDatas, _listDatas));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewState, selectedFilter,
      const DeepCollectionEquality().hash(_listDatas));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryPaymentStateCopyWith<_$_HistoryPaymentState> get copyWith =>
      __$$_HistoryPaymentStateCopyWithImpl<_$_HistoryPaymentState>(
          this, _$identity);
}

abstract class _HistoryPaymentState implements HistoryPaymentState {
  const factory _HistoryPaymentState(
      {final ViewState viewState,
      final int selectedFilter,
      final List<TrxModel> listDatas}) = _$_HistoryPaymentState;

  @override
  ViewState get viewState;
  @override
  int get selectedFilter;
  @override
  List<TrxModel> get listDatas;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryPaymentStateCopyWith<_$_HistoryPaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}
