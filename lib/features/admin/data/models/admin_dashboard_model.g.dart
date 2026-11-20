// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminPendingStoreModel _$AdminPendingStoreModelFromJson(
  Map<String, dynamic> json,
) => _AdminPendingStoreModel(
  id: json['id'] as String,
  name: json['name'] as String,
  ownerName: json['owner_name'] as String,
  address: json['address'] as String,
  createdAt: json['created_at'] as String?,
  coverUrl: json['cover_url'] as String?,
);

Map<String, dynamic> _$AdminPendingStoreModelToJson(
  _AdminPendingStoreModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'owner_name': instance.ownerName,
  'address': instance.address,
  'created_at': instance.createdAt,
  'cover_url': instance.coverUrl,
};

_AdminDashboardResponse _$AdminDashboardResponseFromJson(
  Map<String, dynamic> json,
) => _AdminDashboardResponse(
  storeCount: (json['store_count'] as num).toInt(),
  userCount: (json['user_count'] as num).toInt(),
  pendingCount: (json['pending_count'] as num).toInt(),
  openReportCount: (json['open_report_count'] as num).toInt(),
  pendingStores:
      (json['pending_stores'] as List<dynamic>?)
          ?.map(
            (e) => AdminPendingStoreModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$AdminDashboardResponseToJson(
  _AdminDashboardResponse instance,
) => <String, dynamic>{
  'store_count': instance.storeCount,
  'user_count': instance.userCount,
  'pending_count': instance.pendingCount,
  'open_report_count': instance.openReportCount,
  'pending_stores': instance.pendingStores,
};
