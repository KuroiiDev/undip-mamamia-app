// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MapPointModel _$MapPointModelFromJson(Map<String, dynamic> json) =>
    _MapPointModel(
      id: json['id'] as String,
      name: json['name'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      ratingLabel: json['rating_label'] as String,
    );

Map<String, dynamic> _$MapPointModelToJson(_MapPointModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'rating_label': instance.ratingLabel,
    };
