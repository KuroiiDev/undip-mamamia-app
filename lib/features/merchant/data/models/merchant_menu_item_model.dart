import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_menu_item_model.freezed.dart';
part 'merchant_menu_item_model.g.dart';

@freezed
abstract class MerchantMenuItemModel with _$MerchantMenuItemModel {
  const factory MerchantMenuItemModel({
    required String id,
    @JsonKey(name: 'group_name') required String groupName,
    required String name,
    String? description,
    required int price,
    @JsonKey(name: 'price_label') required String priceLabel,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'is_available') required bool isAvailable,
  }) = _MerchantMenuItemModel;

  factory MerchantMenuItemModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantMenuItemModelFromJson(json);
}
