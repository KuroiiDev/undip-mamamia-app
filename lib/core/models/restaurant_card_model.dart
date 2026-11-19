import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_card_model.freezed.dart';
part 'restaurant_card_model.g.dart';

@freezed
abstract class RestaurantCardModel with _$RestaurantCardModel {
  const factory RestaurantCardModel({
    required String id,
    required String name,
    @JsonKey(name: 'cover_url') String? coverUrl,
    @JsonKey(name: 'rating_label') required String ratingLabel,
    @JsonKey(name: 'rating_count') required int ratingCount,
    @JsonKey(name: 'price_label') required String priceLabel,
    @JsonKey(name: 'distance_label') String? distanceLabel,
    @JsonKey(name: 'is_open_now') required bool isOpenNow,
    @JsonKey(name: 'is_favorited') required bool isFavorited,
  }) = _RestaurantCardModel;

  factory RestaurantCardModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantCardModelFromJson(json);
}
