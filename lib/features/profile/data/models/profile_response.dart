import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../auth/data/models/session_user.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
abstract class ProfileReviewRestaurant with _$ProfileReviewRestaurant {
  const factory ProfileReviewRestaurant({
    required String id,
    required String name,
    @JsonKey(name: 'cover_url') String? coverUrl,
  }) = _ProfileReviewRestaurant;

  factory ProfileReviewRestaurant.fromJson(Map<String, dynamic> json) =>
      _$ProfileReviewRestaurantFromJson(json);
}

@freezed
abstract class ProfileMyReview with _$ProfileMyReview {
  const factory ProfileMyReview({
    required String id,
    required int rating,
    String? comment,
    @JsonKey(name: 'created_label') String? createdLabel,
    required ProfileReviewRestaurant restaurant,
  }) = _ProfileMyReview;

  factory ProfileMyReview.fromJson(Map<String, dynamic> json) =>
      _$ProfileMyReviewFromJson(json);
}

@freezed
abstract class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    required SessionUser user,
    @JsonKey(name: 'review_count') required int reviewCount,
    @JsonKey(name: 'my_reviews') @Default([]) List<ProfileMyReview> myReviews,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}
