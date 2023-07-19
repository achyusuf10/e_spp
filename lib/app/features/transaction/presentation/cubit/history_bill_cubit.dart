import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:e_spp/app/features/transaction/domain/models/trx_model.dart';
import 'package:e_spp/app/features/transaction/domain/usecases/get_detail_bill_usecase.dart';
import 'package:e_spp/app/features/transaction/domain/usecases/get_transaction_datas_usecase.dart';
import 'package:e_spp/config/routes/app_router.dart';
import 'package:e_spp/utils/enum/view_state.dart';
import 'package:e_spp/utils/functions/get_context_func.dart';
import 'package:e_spp/utils/services/dialog_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'history_bill_cubit.freezed.dart';
part 'history_bill_state.dart';

@lazySingleton
class HistoryBillCubit extends Cubit<HistoryBillState> {
  final GetContextFunc _getContext;
  final DialogService _dialogService;
  final GetTransactionDatasUseCase _getTransactionDatasUseCase;
  final GetDetailBillUseCase _getDetailBillUseCase;
  HistoryBillCubit(
    this._getContext,
    this._dialogService,
    this._getTransactionDatasUseCase,
    this._getDetailBillUseCase,
  ) : super(const HistoryBillState());
  List<TrxModel> tempAllTrx = [];
  void onInit() {
    onGetDatas();
  }

  Future<void> onGetDatas() async {
    emit(const HistoryBillState(viewState: ViewState.loading));
    var res = await _getTransactionDatasUseCase.call();
    res.when(
      success: (datas) {
        if (datas.isEmpty) {
          emit(
            state.copyWith(listDatas: datas, viewState: ViewState.empty),
          );
        } else {
          emit(
            state.copyWith(listDatas: datas, viewState: ViewState.success),
          );
        }
        tempAllTrx = datas;
      },
      error: (message, _, __, ___) {
        emit(
          state.copyWith(viewState: ViewState.error),
        );
      },
    );
  }

  void onTapFilter(int value) {
    if (value == 0) {
      emit(
        state.copyWith(
          selectedFilter: value,
          listDatas: tempAllTrx,
        ),
      );
    } else {
      emit(
        state.copyWith(
          selectedFilter: value,
          listDatas: tempAllTrx
              .where((element) => element.statusPembayaran == value.toString())
              .toList(),
        ),
      );
    }
  }

  Future<void> onTapItemCard(TrxModel data) async {
    if (data.statusPembayaran == '2') {
      _getContext.exec.router.push(DetailPaymentRoute(trxModel: data));
      return;
    }
    _getContext.exec.router.push(
      WebViewRoute(
          title: 'Bayar SPP',
          linkUrl: 'https://spp.tearbyte.com/transaksi/${data.id}'),
    );
  }
}
