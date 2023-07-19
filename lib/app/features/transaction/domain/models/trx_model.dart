import 'package:e_spp/app/features/auth/domain/models/user_model.dart';
import 'package:e_spp/app/features/transaction/domain/models/bill_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trx_model.freezed.dart';
part 'trx_model.g.dart';

@unfreezed
class TrxModel with _$TrxModel {
  factory TrxModel({
    int? id,
    @JsonKey(name: 'tarif_spp_id') int? tarifSppId,
    int? nisn,
    @JsonKey(name: 'waktu_transaksi') String? time,
    @JsonKey(name: 'kode_pembayaran') String? kodePembayaran,
    @JsonKey(name: 'status_pembayaran') String? statusPembayaran,
    @JsonKey(includeToJson: false) UserModel? user,
    BillModel? spp,
  }) = _TrxModel;

  factory TrxModel.fromJson(Map<String, dynamic> json) =>
      _$TrxModelFromJson(json);
}
