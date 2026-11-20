// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewUserModel _$ReviewUserModelFromJson(Map<String, dynamic> json) =>
    _ReviewUserModel(
      id: json['id'] as String,
      name: json['name'] as String,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$ReviewUserModelToJson(_ReviewUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar_url': instance.avatarUrl,
    };

_ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => _ReviewModel(
  id: json['id'] as String,
  rating: (json['rating'] as num).toInt(),
  comment: json['comment'] as String?,
  user: json['user'] == null
      ? null
      : ReviewUserModel.fromJson(json['user'] as Map<String, dynamic>),
  createdLabel: json['created_label'] as String?,
  isMine: json['is_mine'] as bool? ?? false,
);

Map<String, dynamic> _$ReviewModelToJson(_ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'comment': instance.comment,
      'user': instance.user,
      'created_label': instance.createdLabel,
      'is_mine': instance.isMine,
    };
