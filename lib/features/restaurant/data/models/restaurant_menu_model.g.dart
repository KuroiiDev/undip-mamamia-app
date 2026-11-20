// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MenuItemModel _$MenuItemModelFromJson(Map<String, dynamic> json) =>
    _MenuItemModel(
      id: json['id'] as String,
      name: json['name'] as String,
      priceLabel: json['price_label'] as String,
      description: json['description'] as String?,
      photoUrl: json['photo_url'] as String?,
      isAvailable: json['is_available'] as bool,
    );

Map<String, dynamic> _$MenuItemModelToJson(_MenuItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price_label': instance.priceLabel,
      'description': instance.description,
      'photo_url': instance.photoUrl,
      'is_available': instance.isAvailable,
    };

_MenuGroupModel _$MenuGroupModelFromJson(Map<String, dynamic> json) =>
    _MenuGroupModel(
      group: json['group'] as String,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => MenuItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$MenuGroupModelToJson(_MenuGroupModel instance) =>
    <String, dynamic>{'group': instance.group, 'items': instance.items};
