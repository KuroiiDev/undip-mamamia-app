// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeResponse _$HomeResponseFromJson(
  Map<String, dynamic> json,
) => _HomeResponse(
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  nearby:
      (json['nearby'] as List<dynamic>?)
          ?.map((e) => RestaurantCardModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  topRated:
      (json['top_rated'] as List<dynamic>?)
          ?.map((e) => RestaurantCardModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$HomeResponseToJson(_HomeResponse instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'nearby': instance.nearby,
      'top_rated': instance.topRated,
    };
