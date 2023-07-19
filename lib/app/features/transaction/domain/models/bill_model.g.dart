// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BillModel _$$_BillModelFromJson(Map<String, dynamic> json) => _$_BillModel(
      id: json['id'] as int? ?? 0,
      bulan: json['bulan'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
      nominal: json['nominal'] as int? ?? 0,
    );

Map<String, dynamic> _$$_BillModelToJson(_$_BillModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bulan': instance.bulan,
      'updated_at': instance.updatedAt,
      'nominal': instance.nominal,
    };
