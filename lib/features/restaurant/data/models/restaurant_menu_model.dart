import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_menu_model.freezed.dart';
part 'restaurant_menu_model.g.dart';

@freezed
abstract class MenuItemModel with _$MenuItemModel {
  const factory MenuItemModel({
    required String id,
    required String name,
    @JsonKey(name: 'price_label') required String priceLabel,
    String? description,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'is_available') required bool isAvailable,
  }) = _MenuItemModel;

  factory MenuItemModel.fromJson(Map<String, dynamic> json) =>
      _$MenuItemModelFromJson(json);
}

@freezed
abstract class MenuGroupModel with _$MenuGroupModel {
  const factory MenuGroupModel({
    required String group,
    @Default([]) List<MenuItemModel> items,
  }) = _MenuGroupModel;

  factory MenuGroupModel.fromJson(Map<String, dynamic> json) =>
      _$MenuGroupModelFromJson(json);
}
