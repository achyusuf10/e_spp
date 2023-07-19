// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @HiveType(typeId: 1, adapterName: 'UserModelAdapter')
  factory UserModel({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
    @HiveField(2) String? username,
    @HiveField(3) String? email,
    @HiveField(4) String? roles,
    @HiveField(5) int? nisn,
    @HiveField(6) @JsonKey(name: 'jenis_kelamin') String? gender,
    @HiveField(7) String? alamat,
    @HiveField(8) @JsonKey(name: 'no_hp') String? phoneNumber,
    @HiveField(9) String? status,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: (json['id'] ?? json['user_id']) as int?,
      name: (json['name'] ?? json['user']['name']) as String?,
      username: json['username'] as String?,
      email: (json['email'] ?? json['user']['email']) as String?,
      roles: json['roles'] as String?,
      nisn: json['nisn'] as int?,
      gender: json['jenis_kelamin'] as String?,
      alamat: json['alamat'] as String?,
      phoneNumber: json['no_hp'] as String?,
      status: json['status'] as String?,
    );
  }
}
