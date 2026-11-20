// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_menu_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MerchantMenuItemModel _$MerchantMenuItemModelFromJson(
  Map<String, dynamic> json,
) => _MerchantMenuItemModel(
  id: json['id'] as String,
  groupName: json['group_name'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  price: (json['price'] as num).toInt(),
  priceLabel: json['price_label'] as String,
  photoUrl: json['photo_url'] as String?,
  isAvailable: json['is_available'] as bool,
);

Map<String, dynamic> _$MerchantMenuItemModelToJson(
  _MerchantMenuItemModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'group_name': instance.groupName,
  'name': instance.name,
  'description': instance.description,
  'price': instance.price,
  'price_label': instance.priceLabel,
  'photo_url': instance.photoUrl,
  'is_available': instance.isAvailable,
};
