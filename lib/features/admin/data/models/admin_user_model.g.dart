// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminUserModel _$AdminUserModelFromJson(Map<String, dynamic> json) =>
    _AdminUserModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      status: json['status'] as String,
      bannedReason: json['banned_reason'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$AdminUserModelToJson(_AdminUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'status': instance.status,
      'banned_reason': instance.bannedReason,
      'avatar_url': instance.avatarUrl,
      'created_at': instance.createdAt,
    };
