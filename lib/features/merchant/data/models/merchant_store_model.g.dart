// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MerchantOpeningHourInput _$MerchantOpeningHourInputFromJson(
  Map<String, dynamic> json,
) => _MerchantOpeningHourInput(
  dayOfWeek: (json['day_of_week'] as num).toInt(),
  day: json['day'] as String?,
  openTime: json['open_time'] as String?,
  closeTime: json['close_time'] as String?,
  isClosed: json['is_closed'] as bool? ?? false,
);

Map<String, dynamic> _$MerchantOpeningHourInputToJson(
  _MerchantOpeningHourInput instance,
) => <String, dynamic>{
  'day_of_week': instance.dayOfWeek,
  'day': instance.day,
  'open_time': instance.openTime,
  'close_time': instance.closeTime,
  'is_closed': instance.isClosed,
};

_MerchantStoreModel _$MerchantStoreModelFromJson(Map<String, dynamic> json) =>
    _MerchantStoreModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      address: json['address'] as String,
      phone: json['phone'] as String?,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      priceLevel: (json['price_level'] as num).toInt(),
      status: json['status'] as String,
      statusReason: json['status_reason'] as String?,
      coverUrl: json['cover_url'] as String?,
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      openingHours:
          (json['opening_hours'] as List<dynamic>?)
              ?.map(
                (e) => MerchantOpeningHourInput.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$MerchantStoreModelToJson(_MerchantStoreModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'phone': instance.phone,
      'lat': instance.lat,
      'lng': instance.lng,
      'price_level': instance.priceLevel,
      'status': instance.status,
      'status_reason': instance.statusReason,
      'cover_url': instance.coverUrl,
      'categories': instance.categories,
      'opening_hours': instance.openingHours,
    };
