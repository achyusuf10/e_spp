part of 'history_payment_cubit.dart';

@freezed
class HistoryPaymentState with _$HistoryPaymentState {
  const factory HistoryPaymentState({
    @Default(ViewState.loading) ViewState viewState,
    @Default(0) int selectedFilter,
    @Default([]) List<TrxModel> listDatas,
  }) = _HistoryPaymentState;
}
