part of 'history_bill_cubit.dart';

@freezed
class HistoryBillState with _$HistoryBillState {
  const factory HistoryBillState({
    @Default(ViewState.loading) ViewState viewState,
    @Default(0) int selectedFilter,
    @Default([]) List<TrxModel> listDatas,
  }) = _HistoryBillState;
}
