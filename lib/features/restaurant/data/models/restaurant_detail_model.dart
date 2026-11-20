import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/category_model.dart';
import 'opening_hour_model.dart';
import 'review_model.dart';

part 'restaurant_detail_model.freezed.dart';
part 'restaurant_detail_model.g.dart';

@freezed
abstract class RestaurantDetailModel with _$RestaurantDetailModel {
  const factory RestaurantDetailModel({
    required String id,
    required String name,
    String? description,
    @JsonKey(name: 'cover_url') String? coverUrl,
    @Default([]) List<String> photos,
    @JsonKey(name: 'rating_label') required String ratingLabel,
    @JsonKey(name: 'rating_count') required int ratingCount,
    @JsonKey(name: 'price_label') required String priceLabel,
    @JsonKey(name: 'is_open_now') required bool isOpenNow,
    required String address,
    String? phone,
    required double lat,
    required double lng,
    @Default([]) List<CategoryModel> categories,
    @JsonKey(name: 'opening_hours') @Default([]) List<OpeningHourModel> openingHours,
    @JsonKey(name: 'is_favorited') required bool isFavorited,
    @JsonKey(name: 'my_review') ReviewModel? myReview,
    @JsonKey(name: 'top_reviews') @Default([]) List<ReviewModel> topReviews,
  }) = _RestaurantDetailModel;

  factory RestaurantDetailModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantDetailModelFromJson(json);
}
