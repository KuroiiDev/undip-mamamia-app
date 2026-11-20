// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MerchantStoreSummary _$MerchantStoreSummaryFromJson(
  Map<String, dynamic> json,
) => _MerchantStoreSummary(
  id: json['id'] as String,
  name: json['name'] as String,
  status: json['status'] as String,
  statusReason: json['status_reason'] as String?,
  ratingLabel: json['rating_label'] as String,
  reviewCount: (json['review_count'] as num).toInt(),
  menuCount: (json['menu_count'] as num).toInt(),
);

Map<String, dynamic> _$MerchantStoreSummaryToJson(
  _MerchantStoreSummary instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'status': instance.status,
  'status_reason': instance.statusReason,
  'rating_label': instance.ratingLabel,
  'review_count': instance.reviewCount,
  'menu_count': instance.menuCount,
};

_MerchantDashboardResponse _$MerchantDashboardResponseFromJson(
  Map<String, dynamic> json,
) => _MerchantDashboardResponse(
  store: json['store'] == null
      ? null
      : MerchantStoreSummary.fromJson(json['store'] as Map<String, dynamic>),
  latestReviews:
      (json['latest_reviews'] as List<dynamic>?)
          ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$MerchantDashboardResponseToJson(
  _MerchantDashboardResponse instance,
) => <String, dynamic>{
  'store': instance.store,
  'latest_reviews': instance.latestReviews,
};
