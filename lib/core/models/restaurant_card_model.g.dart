// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantCardModel _$RestaurantCardModelFromJson(Map<String, dynamic> json) =>
    _RestaurantCardModel(
      id: json['id'] as String,
      name: json['name'] as String,
      coverUrl: json['cover_url'] as String?,
      ratingLabel: json['rating_label'] as String,
      ratingCount: (json['rating_count'] as num).toInt(),
      priceLabel: json['price_label'] as String,
      distanceLabel: json['distance_label'] as String?,
      isOpenNow: json['is_open_now'] as bool,
      isFavorited: json['is_favorited'] as bool,
    );

Map<String, dynamic> _$RestaurantCardModelToJson(
  _RestaurantCardModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'cover_url': instance.coverUrl,
  'rating_label': instance.ratingLabel,
  'rating_count': instance.ratingCount,
  'price_label': instance.priceLabel,
  'distance_label': instance.distanceLabel,
  'is_open_now': instance.isOpenNow,
  'is_favorited': instance.isFavorited,
};
