// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hour_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpeningHourModel _$OpeningHourModelFromJson(Map<String, dynamic> json) =>
    _OpeningHourModel(
      day: json['day'] as String,
      open: json['open'] as String?,
      close: json['close'] as String?,
      isClosed: json['is_closed'] as bool,
    );

Map<String, dynamic> _$OpeningHourModelToJson(_OpeningHourModel instance) =>
    <String, dynamic>{
      'day': instance.day,
      'open': instance.open,
      'close': instance.close,
      'is_closed': instance.isClosed,
    };
