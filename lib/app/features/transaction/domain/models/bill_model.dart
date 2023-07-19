import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_model.freezed.dart';
part 'bill_model.g.dart';

@freezed
class BillModel with _$BillModel {
  factory BillModel({
    @Default(0) int? id,
    @Default('') String? bulan,
    // ignore: invalid_annotation_target
    @Default('') @JsonKey(name: 'updated_at') String? updatedAt,
    @Default(0) int? nominal,
  }) = _BillModel;

  factory BillModel.fromJson(Map<String, dynamic> json) =>
      _$BillModelFromJson(json);
}
