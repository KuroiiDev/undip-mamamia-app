// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminStoreOwnerModel _$AdminStoreOwnerModelFromJson(
  Map<String, dynamic> json,
) => _AdminStoreOwnerModel(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
);

Map<String, dynamic> _$AdminStoreOwnerModelToJson(
  _AdminStoreOwnerModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
};

_AdminStoreItemModel _$AdminStoreItemModelFromJson(Map<String, dynamic> json) =>
    _AdminStoreItemModel(
      id: json['id'] as String,
      name: json['name'] as String,
      status: json['status'] as String,
      statusReason: json['status_reason'] as String?,
      address: json['address'] as String,
      phone: json['phone'] as String?,
      ratingAvg: (json['rating_avg'] as num?)?.toDouble() ?? 0.0,
      ratingCount: (json['rating_count'] as num?)?.toInt() ?? 0,
      coverUrl: json['cover_url'] as String?,
      owner: json['owner'] == null
          ? null
          : AdminStoreOwnerModel.fromJson(
              json['owner'] as Map<String, dynamic>,
            ),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$AdminStoreItemModelToJson(
  _AdminStoreItemModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'status': instance.status,
  'status_reason': instance.statusReason,
  'address': instance.address,
  'phone': instance.phone,
  'rating_avg': instance.ratingAvg,
  'rating_count': instance.ratingCount,
  'cover_url': instance.coverUrl,
  'owner': instance.owner,
  'created_at': instance.createdAt,
};
