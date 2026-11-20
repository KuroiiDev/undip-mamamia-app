import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_user.freezed.dart';
part 'session_user.g.dart';

@freezed
abstract class SessionUser with _$SessionUser {
  const factory SessionUser({
    required String id,
    required String name,
    required String email,
    required String role,
    required String status,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
  }) = _SessionUser;

  factory SessionUser.fromJson(Map<String, dynamic> json) =>
      _$SessionUserFromJson(json);
}
