// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantDetailModel _$RestaurantDetailModelFromJson(
  Map<String, dynamic> json,
) => _RestaurantDetailModel(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  coverUrl: json['cover_url'] as String?,
  photos:
      (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  ratingLabel: json['rating_label'] as String,
  ratingCount: (json['rating_count'] as num).toInt(),
  priceLabel: json['price_label'] as String,
  isOpenNow: json['is_open_now'] as bool,
  address: json['address'] as String,
  phone: json['phone'] as String?,
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  openingHours:
      (json['opening_hours'] as List<dynamic>?)
          ?.map((e) => OpeningHourModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  isFavorited: json['is_favorited'] as bool,
  myReview: json['my_review'] == null
      ? null
      : ReviewModel.fromJson(json['my_review'] as Map<String, dynamic>),
  topReviews:
      (json['top_reviews'] as List<dynamic>?)
          ?.map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$RestaurantDetailModelToJson(
  _RestaurantDetailModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'cover_url': instance.coverUrl,
  'photos': instance.photos,
  'rating_label': instance.ratingLabel,
  'rating_count': instance.ratingCount,
  'price_label': instance.priceLabel,
  'is_open_now': instance.isOpenNow,
  'address': instance.address,
  'phone': instance.phone,
  'lat': instance.lat,
  'lng': instance.lng,
  'categories': instance.categories,
  'opening_hours': instance.openingHours,
  'is_favorited': instance.isFavorited,
  'my_review': instance.myReview,
  'top_reviews': instance.topReviews,
};
