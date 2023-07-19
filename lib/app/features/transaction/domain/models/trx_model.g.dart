// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trx_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrxModel _$$_TrxModelFromJson(Map<String, dynamic> json) => _$_TrxModel(
      id: json['id'] as int?,
      tarifSppId: json['tarif_spp_id'] as int?,
      nisn: json['nisn'] as int?,
      time: json['waktu_transaksi'] as String?,
      kodePembayaran: json['kode_pembayaran'] as String?,
      statusPembayaran: json['status_pembayaran'] as String?,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      spp: json['spp'] == null
          ? null
          : BillModel.fromJson(json['spp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TrxModelToJson(_$_TrxModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tarif_spp_id': instance.tarifSppId,
      'nisn': instance.nisn,
      'waktu_transaksi': instance.time,
      'kode_pembayaran': instance.kodePembayaran,
      'status_pembayaran': instance.statusPembayaran,
      'spp': instance.spp,
    };
