import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_user_model.freezed.dart';
part 'admin_user_model.g.dart';

@freezed
abstract class AdminUserModel with _$AdminUserModel {
  const factory AdminUserModel({
    required String id,
    required String name,
    required String email,
    required String role,
    required String status,
    @JsonKey(name: 'banned_reason') String? bannedReason,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _AdminUserModel;

  factory AdminUserModel.fromJson(Map<String, dynamic> json) =>
      _$AdminUserModelFromJson(json);
}
